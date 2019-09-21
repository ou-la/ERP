package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Stock;
import com.pages.Page;
import com.service.StockService;

@Controller
@RequestMapping("/stock")
public class StockController {

	@Autowired
	private StockService us;

	@RequestMapping("/main")
	public String main(Model model,Stock stock) {

		return "page/stock";
	}
	
	@RequestMapping("/find")
	@ResponseBody
	public Object find(Stock stock) {
		if(stock.getLimit() > 0) {
			stock.setLimits("1");
		}
		List<Stock> mList = us.selectAll(stock);
		Page page = new Page();
		page.setPageNumber(stock.getOffset());
		page.setPageSize(stock.getLimit());
		page.setTotal(us.count(stock));
		page.setObj(mList);
		return page;
	}
}
