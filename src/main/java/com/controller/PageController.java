package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {
	
	@RequestMapping("/index")
	public String index() {
		return "page/index";
	}

	@RequestMapping("/forms")
	public String forms() {
		
		
		return "page/forms";
	}

	@RequestMapping("/tables")
	public String tables() {
		
		return "page/tables";
	}
	
	@RequestMapping("/btTest")
	public String btTest(){
		
		return "page/btTest";
	}
}
