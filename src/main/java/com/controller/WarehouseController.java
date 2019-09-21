package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.spi.http.HttpContext;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Materiel;
import com.entity.Stock;
import com.entity.Warehouse;
import com.pages.Page;
import com.service.MaterielService;
import com.service.StockService;
import com.service.WarehouseService;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

@Controller
@RequestMapping("/warehouse")
public class WarehouseController {
	
	@Autowired
	private WarehouseService us;
	
	@Autowired
	private MaterielService ma;
	
	@Autowired
	private StockService st;


	@RequestMapping("/main")
	public String main(Model model) {
		Warehouse warehouse = new Warehouse();
		warehouse.setWarehouse_id(null);
		List<Warehouse> warList = us.selectAll(warehouse);
		model.addAttribute("warList",warList);
		return "page/warehouse";
	}
	
	@RequestMapping("/find")
	@ResponseBody
	public Object find(Warehouse warehouse) {
		if(warehouse.getLimit() > 0) {
			warehouse.setLimits("1");
		}
		List<Warehouse> warehouseList = us.selectAll(warehouse);
		Page page = new Page();
		page.setPageNumber(warehouse.getOffset());
		page.setPageSize(warehouse.getLimit());
		page.setTotal(us.count(warehouse));
		page.setObj(warehouseList);
		return page;
	}
	
	@RequestMapping("/deleteById")
	public String deleteById(Model model,String id) {
		us.deleteById(id);
		return "page/warehouse";
	}
	
	@RequestMapping("/addUser")
	@ResponseBody
	public int addUser(Warehouse warehouse){
		try {
			us.addUser(warehouse);
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
	}
	
	@RequestMapping("/updateUser")
	@ResponseBody
	public int updateUser(Warehouse warehouse){
		try {
			us.updateUser(warehouse);
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
	}
	
	@RequestMapping("/inventoryExcel")
	@ResponseBody
	public Map<String,String> inventoryExcel(HttpServletRequest req,Stock stock) throws IOException{
		String realPath = req.getSession().getServletContext().getRealPath("/");
		String uploadPath = "static\\excel\\";
		String pathName = "盘库表.xls";
		String fileName = realPath+uploadPath+pathName;
		File xlsFile = new File(fileName);
		WritableWorkbook web = null;
		
		Map<String,String> map = new HashMap<String,String>();
		
	    try {
	    	// 创建一个工作簿
	    	web = Workbook.createWorkbook(xlsFile);
			// 创建一个工作表
			WritableSheet sheet = web.createSheet("sheet0", 0);
			Date date = new Date();
		   // 向工作表中添加数据
	       sheet.addCell(new Label(0, 1, date.toString()+"盘库，仓库名称"));
	       sheet.addCell(new Label(1, 1, "序号"));
	       sheet.addCell(new Label(2, 1, "物料名称"));
	       sheet.addCell(new Label(3, 1, "物料规格"));
	       sheet.addCell(new Label(4, 1, "物料单价"));
	       sheet.addCell(new Label(4, 1, "物料单位"));
	       sheet.addCell(new Label(5, 1, "物料数量"));
	       sheet.addCell(new Label(6, 1, "实际数量"));
	       sheet.addCell(new Label(7, 1, "备注信息"));
	       
	       List<Stock> stocks = st.selectAll(stock);
	       if(stocks != null && stocks.size()>0) {
	    	   for(int row = 0;row < stocks.size();row++) {
	    		   //for(int clo = 0;clo<7;clo++) {
	    			   sheet.addCell(new Label(0, row+2, stocks.get(row).getStock_id()));
	    			   sheet.addCell(new Label(1, row+2, stocks.get(row).getStock_name()));
	    			   sheet.addCell(new Label(2, row+2, stocks.get(row).getStock_specifications()));
	    			   sheet.addCell(new Label(3, row+2, stocks.get(row).getStock_price()));
	    			   sheet.addCell(new Label(4, row+2, stocks.get(row).getStock_company()));
	    			   sheet.addCell(new Label(5, row+2, stocks.get(row).getStock_number()));
	    			   sheet.addCell(new Label(6, row+2, stocks.get(row).getStock_actual_number()));
	    			   sheet.addCell(new Label(7, row+2, stocks.get(row).getStock_describe()));
	    		   //}
	    	   }
	       }
    	   web.write();
    	   web.close();
    	   String pName = uploadPath+pathName;
    	   map.put("path", pName);
    	   return map;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (RowsExceededException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (WriteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    map.put("path", "");
		return map;
	}
	
	@RequestMapping("/toUpload")
	public String toUpload(){
		
		return "page/common/pages/warehouse__upload";
	}
	
	@RequestMapping("/uploadExcel")
	@ResponseBody
	public Map<String,String> uploadExcel(HttpServletRequest req,@Param("file")MultipartFile file,Stock stock,Materiel materiel){
		
		String realPath = req.getSession().getServletContext().getRealPath("/");
		String uploadPath = "static\\excel\\";
		String pathName = "盘库表上传.xls";
		String fileName = realPath+uploadPath+pathName;
		
		File newFile = new File(fileName);
		try {
			InputStream fis = file.getInputStream();
			file.transferTo(newFile);
			
			Workbook wwb = Workbook.getWorkbook(fis);
			Sheet sheet = wwb.getSheet(0);
			int rows = sheet.getRows();
			for(int i = 0;i < rows;i++) {
				if(i >1) {
					Cell[] cell = sheet.getRow(i);
					//stock.setStock_name(cell[1].getContents().trim());//trim处理空格
					System.out.println("------------------------------");
					System.out.println(cell[0].getContents());
					System.out.println(cell[1].getContents());
					System.out.println(cell[2].getContents());
					System.out.println(cell[3].getContents());
					System.out.println(cell[4].getContents());
					System.out.println(cell[5].getContents());
					System.out.println(cell[6].getContents());
					System.out.println("------------------------------");
					materiel.setMaterie_name(cell[1].getContents());
					materiel.setMaterie_number(cell[6].getContents());
					stock.setStock_name(cell[1].getContents());
					stock.setStock_number(cell[6].getContents());
					ma.updateInventory(materiel);
					st.updateInventory(stock);
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BiffException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
}
