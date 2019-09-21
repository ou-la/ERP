package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Supplier;
import com.pages.Page;
import com.service.SupplierService;

@Controller
@RequestMapping("/supplier")
class SupplierController {
	
	@Autowired
	private SupplierService us;


	@RequestMapping("/main")
	public String main(Model model) {
		Supplier supplier = new Supplier();
		supplier.setSupplier_id(null);
		List<Supplier> supList = us.selectAll(supplier);
		model.addAttribute("supList",supList);
		return "page/supplier";
	}
	
	@RequestMapping("/find")
	@ResponseBody
	public Object find(Supplier supplier) {
		if(supplier.getLimit() > 0) {
			supplier.setLimits("1");
		}
		List<Supplier> supplierList = us.selectAll(supplier);
		Page page = new Page();
		page.setPageNumber(supplier.getOffset());
		page.setPageSize(supplier.getLimit());
		page.setTotal(us.count(supplier));
		page.setObj(supplierList);
		return page;
	}
	
	@RequestMapping("/deleteById")
	public String deleteById(Model model,String id) {
		us.deleteById(id);
		return "page/supplier";
	}
	
	@RequestMapping("/addUser")
	@ResponseBody
	public int addUser(Supplier supplier){
		try {
			us.addUser(supplier);
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
	}
	
	@RequestMapping("/updateUser")
	@ResponseBody
	public int updateUser(Supplier supplier){
		try {
			us.updateUser(supplier);
			return 1;
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
	}
	
}
