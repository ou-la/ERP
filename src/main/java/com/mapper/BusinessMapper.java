package com.mapper;

import java.util.List;

import com.entity.Business;

public interface BusinessMapper {
	//全部查询
	public List<Business> selectAll(Business business);
	//分页查询
	public int count(Business business);
	//删除
	public void deleteById(String id);
	//添加
	public int addUser(Business business);
	//修改
	public int updateUser(Business business);
}
