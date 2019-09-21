package com.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ajax.AjaxRes;
import com.entity.Staff;
import com.service.StaffService;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private StaffService sta;
	
	@RequestMapping("/main")
	public String main(Model model) {
		
		return "page/login";
	}
	
	@RequestMapping("/toLogin")
	@ResponseBody
	public AjaxRes tologin(String staff_name,String staff_password) {
		AjaxRes res = new AjaxRes();
		int len = sta.countLogin(staff_name);
		if(len <= 0) {
			res.setSucceedMsg("用户不存在");
			return res;
		}
		res.setSucceedMsg("登陆成功");
		return res;
	}

	@RequestMapping("/register")
	public String register(Model model) {
		
		return "page/register";
	}
	
	@RequestMapping("/toRegister")
	@ResponseBody
	public AjaxRes toRegister(Staff staff,String staff_name,String staff_password) {
		AjaxRes res = new AjaxRes();
		int len = sta.countLogin(staff_name);
		if(len <= 0) {
			staff.setStaff_name(staff_name);
			int lem = sta.addUser(staff);
			if(lem <= 0) {
				res.setSucceedMsg("注册失败");
				return res;
			}
			res.setSucceedMsg("注册成功");
			return res;
		}
		res.setSucceedMsg("用户已存在");
		return res;
	}

	@RequestMapping("/index")
	public String index(Model model) {
		return "page/index";
	}
}
