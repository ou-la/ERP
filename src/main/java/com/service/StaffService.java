package com.service;

import java.util.List;

import com.entity.Staff;

public interface StaffService {
	//全部查询
		public List<Staff> selectAll(Staff staff);
		//分页查询
		public int count(Staff staff);
		//登录查询
		public int countLogin(String staff_name);
		//删除
		public void deleteById(String staff_name);
		//添加
		public int addUser(Staff staff);
		//修改
		public int updateUser(Staff staff);
}
