package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Export;
import com.entity.Materiel;
import com.entity.Stock;
import com.pages.Page;
import com.service.ExportService;
import com.service.MaterielService;
import com.service.StockService;

@Controller
@RequestMapping("/export")
public class ExportController {

	@Autowired
	private ExportService ex;
	
	@Autowired
	private StockService st;
	
	@Autowired
	private MaterielService m;

	@RequestMapping("/main")
	public String main(Model model) {
		List<Export> exList = ex.selectAll(null);
		model.addAttribute("exList",exList);
		return "page/export";
	}
	
	@RequestMapping("/find")
	@ResponseBody
	public Object find(Export export) {
		if(export.getLimit() > 0) {
			export.setLimits("1");
		}
		List<Export> materielList = ex.selectAll(export);
		Page page = new Page();
		page.setPageNumber(export.getOffset());
		page.setPageSize(export.getLimit());
		page.setTotal(ex.count(export));
		page.setObj(materielList);
		return page;
	}
	
	@RequestMapping("/onlyFind")
	@ResponseBody
	public List<Export> onlyFind(Model model,Export export) {
		List<Export> exportList = ex.selectAll(null);
		model.addAttribute("exList",exportList);
		return exportList;
	}
	
	@RequestMapping("/deleteById")
	public String deleteById(Model model,String id) {
		ex.deleteById(id);
		return "page/export";
	}
	
	@RequestMapping("/addUser")
	@ResponseBody
	public int addUser(Export export,Stock stock,Materiel materiel){
		stock.setStock_name(export.getExport_commodity());
		stock.setStock_number(export.getExport_commodity_number());
		materiel.setMaterie_name(export.getExport_commodity());
		materiel.setMaterie_number(export.getExport_commodity_number());
		Date date = new Date();
	    long times = date.getTime();//时间戳
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String dateString = formatter.format(date);
	    export.setExport_date(dateString);
		ex.addUser(export);
		st.updateExport(stock);
		m.updateExport(materiel);
		return 1;
	}
	
	@RequestMapping("/updateUser")
	@ResponseBody
	public int updateUser(Export export){
		ex.updateUser(export);
		return 1;
	}
}
