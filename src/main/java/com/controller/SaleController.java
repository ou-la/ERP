package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Export;
import com.entity.Materiel;
import com.entity.Sale;
import com.entity.Stock;
import com.pages.Page;
import com.service.ExportService;
import com.service.MaterielService;
import com.service.SaleService;
import com.service.StockService;

@Controller
@RequestMapping("/sale")
public class SaleController {

	@Autowired
	private SaleService sa;
	
	@Autowired
	private MaterielService ma;
	
	@RequestMapping("/main")
	public String main(Model model) {
		List<Sale> saList = sa.selectAll(null);
		model.addAttribute("saList",saList);
		List<Materiel> proList = ma.selectAll(null);
		model.addAttribute("proList",proList);
		return "page/sale";
	}
	
	@RequestMapping("/find")
	@ResponseBody
	public Object find(Sale sale) {
		if(sale.getLimit() > 0) {
			sale.setLimits("1");
		}
		List<Sale> saleList = sa.selectAll(sale);
		Page page = new Page();
		page.setPageNumber(sale.getOffset());
		page.setPageSize(sale.getLimit());
		page.setTotal(sa.count(sale));
		page.setObj(saleList);
		return page;
	}
	
	@RequestMapping("/deleteById")
	public String deleteById(String id) {
		sa.deleteById(id);
		return "page/sale";
	}
	
	@RequestMapping("/addUser")
	@ResponseBody
	public int addUser(Sale sale){
		Date date = new Date();
	    long times = date.getTime();//时间戳
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String dateString = formatter.format(date);
	    sale.setSale_date(dateString);
		sa.addUser(sale);
		return 1;
	}
	
	@RequestMapping("/updateUser")
	@ResponseBody
	public int updateUser(Sale sale){
		sa.updateUser(sale);
		return 1;
	}
	
	@RequestMapping("/toExport")
	public String toExport(Model model,Integer bill_id,String sale_pro,String sale_pro_number,String sale_pro_uprice,String sale_pro_price) {
		
		model.addAttribute("bill_id",bill_id);
		model.addAttribute("sale_pro",sale_pro);
		model.addAttribute("sale_pro_number",sale_pro_number);
		model.addAttribute("sale_pro_uprice",sale_pro_uprice);
		model.addAttribute("sale_pro_price",sale_pro_price);
		
		return "page/common/pages/sale_export";
	}
	
	@RequestMapping("/toSaleAdd")
	public String toMaterielAdd(Model model) {
		return "page/common/pages/sale__add";
	}
	
	@RequestMapping("/toMaterielUpdate")
	public String toMaterielUpdate(Model model,String bill_id,String bill_type,String business_name,String business_linkman,String business_phone,String business_contact_another,String business_address,String sale_pro,String sale_pro_number,String sale_pro_uprice,String sale_pro_price,String sale_price,String sale_staff,String sale_date) {
		model.addAttribute("bill_id",bill_id);
		model.addAttribute("bill_type",bill_type);
		model.addAttribute("business_name",business_name);
		model.addAttribute("business_linkman",business_linkman);
		model.addAttribute("business_phone",business_phone);
		model.addAttribute("business_contact_another",business_contact_another);
		model.addAttribute("business_address",business_address);
		model.addAttribute("sale_pro",sale_pro);
		model.addAttribute("sale_pro_number",sale_pro_number);
		model.addAttribute("sale_pro_uprice",sale_pro_uprice);
		model.addAttribute("sale_pro_price",sale_pro_price);
		model.addAttribute("sale_price",sale_price);
		model.addAttribute("sale_staff",sale_staff);
		model.addAttribute("sale_date",sale_date);
		return "page/common/pages/sale_update";
	}
}
