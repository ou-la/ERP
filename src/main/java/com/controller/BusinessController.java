package com.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Business;
import com.entity.Materiel;
import com.pages.Page;
import com.service.BusinessService;

@Controller
@RequestMapping("/business")
public class BusinessController {

	@Autowired
	private BusinessService bus;
	
	@RequestMapping("/main")
	public String main(Model model) {
		List<Business> busList = bus.selectAll(null);
		model.addAttribute("busList",busList);
		return "page/business";
	} 
	
	@RequestMapping("/find")
	@ResponseBody
	public Object find(Business business) {
		if(business.getLimit() > 0) {
			business.setLimits("1");
		}
		List<Business> businessList = bus.selectAll(business);
		Page page = new Page();
		page.setPageNumber(business.getOffset());
		page.setPageSize(business.getLimit());
		page.setTotal(bus.count(business));
		page.setObj(businessList);
		return page;
	}
	
	@RequestMapping("/deleteById")
	public String deleteById(String id) {
		bus.deleteById(id);
		return "page/materiel";
	}
	
	@RequestMapping("/addUser")
	@ResponseBody
	public int addUser(Business business){
		bus.addUser(business);
		return 1;
	}
	
	@RequestMapping("/updateUser")
	@ResponseBody
	public int updateUser(Business business){
		bus.updateUser(business);
		return 1;
	}
	
	@RequestMapping("/businessFind")
	@ResponseBody
	public List<Business> saleFind(Model model) {
		List<Business> busMList = bus.selectAll(null);
		model.addAttribute("busMList",busMList);
		return busMList;
	}
}
