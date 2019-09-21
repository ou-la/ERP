package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Purchase;
import com.pages.Page;
import com.service.PurchaseService;

@Controller
@RequestMapping("/purchase")
public class PurchaseController {
	
	@Autowired
	private PurchaseService us;
	
	@RequestMapping("/main")
	public String main(Model model) {
		List<Purchase> purchaseList = us.selectCommodity(null);
		model.addAttribute("purchaseList",purchaseList);
		return "page/purchase";
	}
	
	@RequestMapping("/find")
	@ResponseBody
	public Object find(Purchase purchase) {
		if(purchase.getLimit() > 0) {
			purchase.setLimits("1");
		}
		List<Purchase> purchaseList = us.selectAll(purchase);
		Page page = new Page();
		page.setPageNumber(purchase.getOffset());
		page.setPageSize(purchase.getLimit());
		page.setTotal(us.count(purchase));
		page.setObj(purchaseList);
		return page;
	}
	
	@RequestMapping("/deleteById")
	public String deleteById(Model model,String id) {
		us.deleteById(id);
		return "page/purchase";
	}
	
	@RequestMapping("/addUser")
	@ResponseBody
	public int addUser(Purchase purchase){
		
		Date date = new Date();
	    long times = date.getTime();//时间戳
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String dateString = formatter.format(date);
	    purchase.setPurchase_date(dateString);
		
		us.addUser(purchase);
		return 1;
	}
	
	@RequestMapping("/toSh")
	public String toSh(Model model,String id,String status,String img,String purchase_commodity,Integer purchase_commodity_number) {
		model.addAttribute("id", id);
		model.addAttribute("img", img);
		model.addAttribute("status", status);
		model.addAttribute("purchase_commodity", purchase_commodity);
		model.addAttribute("purchase_commodity_number", purchase_commodity_number);
		return "page/sh";
	}
	@RequestMapping("/updateOne")
	@ResponseBody
	public int updateOne(Purchase purchase){
		System.out.println("99:"+purchase.getPurchase_commodity_number());
		us.updateUser(purchase);
		return 1;
	}
	
	@RequestMapping("/updateUser")
	@ResponseBody
	public int updateUser(Purchase purchase,HttpServletRequest req,Model model,String purchase_commodity,Integer purchase_commodity_number){
			try {
				String base64 = purchase.getPurchase_img().replace("data:image/png;base64,", "");
				String realPath = req.getSession().getServletContext().getRealPath("/");
				String uploadPath = "static\\upload\\";
				String pathName = purchase.getBill_id()+".png";
				String fileName = realPath+uploadPath+pathName;
				
				BufferedOutputStream bos = null;
		        FileOutputStream fos = null;
				try {
		            byte[] bytes = Base64.getDecoder().decode(base64);
		            File file=new File(fileName);
		            fos = new java.io.FileOutputStream(file);
		            bos = new BufferedOutputStream(fos);
		            bos.write(bytes);
					purchase.setPurchase_img(pathName);
					us.updateUser(purchase);
					
					String p_status = purchase.getPurchase_status();
					System.out.println("1:"+p_status);
					System.out.println("2:"+p_status);
					if(p_status != "待审核" && p_status != "审核不过") {
						purchase.setPurchase_commodity(purchase_commodity);
						purchase.setPurchase_commodity_number(purchase_commodity_number);
						us.updateMateriel(purchase);
						us.updateStock(purchase);
						System.out.println("over");
					}
					return 1;
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            if (bos != null) {
		                try {
		                    bos.close();
		                } catch (IOException e) {
		                    e.printStackTrace();
		                }
		            }
		            if (fos != null) {
		                try {
		                    fos.close();
		                } catch (IOException e) {
		                    e.printStackTrace();
		                }
		            }
		        }
				return 0;
			} catch (Exception e) {
				return 0;
			}
	}
	
	@RequestMapping("/toPurchaseAdd")
	public String toPurchaseAdd(Model model) {
		
		return "page/common/pages/purchase_add";
	}
	
	@RequestMapping("/toPurchaseUpdate")
	public String toPurchaseUpdate(Model model,String bill_id,String bill_type,String purchase_commodity,String purchase_supplier,String purchase_commodity_uprice,String purchase_commodity_number,String purchase_commodity_price,String purchase_price,String purchase_staff,String purchase_date,String purchase_status) {
		model.addAttribute("bill_id",bill_id);
		model.addAttribute("bill_type",bill_type);
		model.addAttribute("purchase_commodity",purchase_commodity);
		model.addAttribute("purchase_supplier",purchase_supplier);
		model.addAttribute("purchase_commodity_uprice",purchase_commodity_uprice);
		model.addAttribute("purchase_commodity_number",purchase_commodity_number);
		model.addAttribute("purchase_commodity_price",purchase_commodity_price);
		model.addAttribute("purchase_price",purchase_price);
		model.addAttribute("purchase_staff",purchase_staff);
		model.addAttribute("purchase_date",purchase_date);
		model.addAttribute("purchase_status",purchase_status);
		return "page/common/pages/purchase_update";
	}
	
	@RequestMapping("/purchaseAddList")
	@ResponseBody
	public List<Purchase> purchaseAddList(Model model) {
		List<Purchase> purchaseList = us.selectCommodity(null);
		model.addAttribute("purchaseList",purchaseList);
		return purchaseList;
	}
}
