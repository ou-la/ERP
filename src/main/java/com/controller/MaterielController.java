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

import com.entity.Materiel;
import com.entity.Stock;
import com.pages.Page;
import com.service.MaterielService;
import com.service.StockService;

@Controller
@RequestMapping("/materiel")
public class MaterielController {

	@Autowired
	private MaterielService us;
	@Autowired
	private StockService st;

	@RequestMapping("/main")
	public String main(Model model) {
		List<Materiel> materielList = us.selectAll(null);
		model.addAttribute("materielList",materielList);
		return "page/materiel";
	}
	
	@RequestMapping("/toMaterielAdd")
	public String toMaterielAdd(Model model) {
		
		return "page/common/pages/materie__add";
	}
	
	@RequestMapping("/toMaterielUpdate")
	public String toMaterielUpdate(Model model,String materiel_id,String materie_name,String materie_type,String materie_specifications,String materie_describe,String materie_price,String materie_company,String materie_number,String materie_supplier,String materie_purchase_date) {
		model.addAttribute("materiel_id",materiel_id);
		model.addAttribute("materie_name",materie_name);
		model.addAttribute("materie_type",materie_type);
		model.addAttribute("materie_specifications",materie_specifications);
		model.addAttribute("materie_describe",materie_describe);
		model.addAttribute("materie_price",materie_price);
		model.addAttribute("materie_company",materie_company);
		model.addAttribute("materie_number",materie_number);
		model.addAttribute("materie_supplier",materie_supplier);
		model.addAttribute("materie_purchase_date",materie_purchase_date);
		return "page/common/pages/materiel_update";
	}
	
	@RequestMapping("/find")
	@ResponseBody
	public Object find(Materiel materiel) {
		if(materiel.getLimit() > 0) {
			materiel.setLimits("1");
		}
		List<Materiel> materielList = us.selectAll(materiel);
		Page page = new Page();
		page.setPageNumber(materiel.getOffset());
		page.setPageSize(materiel.getLimit());
		page.setTotal(us.count(materiel));
		page.setObj(materielList);
		return page;
	}
	
	@RequestMapping("/deleteById")
	public String deleteById(Model model,String id,String materie_name) {
		us.deleteById(id);
		String m_name = materie_name;
		st.deleteById(m_name);
		return "page/materiel";
	}
	
	@RequestMapping("/addUser")
	@ResponseBody
	public int addUser(Materiel materiel,Stock stock){
		stock.setStock_id(UUID.randomUUID().toString());
		stock.setStock_name(materiel.getMaterie_name());
		stock.setStock_type(materiel.getMaterie_type());
		stock.setStock_specifications(materiel.getMaterie_specifications());
		stock.setStock_number(materiel.getMaterie_number());
		stock.setStock_number(materiel.getMaterie_number());
		stock.setStock_actual_number(materiel.getMaterie_number());
		stock.setStock_price(materiel.getMaterie_price());
		stock.setStock_company(materiel.getMaterie_company());
		stock.setStock_describe(materiel.getMaterie_describe());
		
		Date date = new Date();
	    long times = date.getTime();//时间戳
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String dateString = formatter.format(date);
	    materiel.setMaterie_purchase_date(dateString);
		
		us.addUser(materiel);
		st.addUser(stock);
		return 1;
	}
	
	@RequestMapping("/updateUser")
	@ResponseBody
	public int updateUser(Materiel materiel,Stock stock){
		stock.setStock_id(UUID.randomUUID().toString());
		stock.setStock_name(materiel.getMaterie_name());
		stock.setStock_type(materiel.getMaterie_type());
		stock.setStock_specifications(materiel.getMaterie_specifications());
		stock.setStock_number(materiel.getMaterie_number());
		stock.setStock_number(materiel.getMaterie_number());
		stock.setStock_actual_number(materiel.getMaterie_number());
		stock.setStock_price(materiel.getMaterie_price());
		stock.setStock_company(materiel.getMaterie_company());
		stock.setStock_describe(materiel.getMaterie_describe());
		
		Date date = new Date();
	    long times = date.getTime();//时间戳
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String dateString = formatter.format(date);
	    materiel.setMaterie_purchase_date(dateString);
	    
		us.updateUser(materiel);
		st.updateInventory(stock);
		return 1;
	}
	
	@RequestMapping("/saleFind")
	@ResponseBody
	public List<Materiel> saleFind(Model model) {
		List<Materiel> saleMList = us.selectAll(null);
		model.addAttribute("saleMList",saleMList);
		return saleMList;
	}

	
	@RequestMapping("/materielAddList")
	@ResponseBody
	public List<Materiel> materielAddList(Model model) {
		List<Materiel> mAddList = us.selectAll(null);
		model.addAttribute("mAddList",mAddList);
		return mAddList;
	}
}
