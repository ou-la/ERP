package com.mapper;

import java.util.List;

import com.entity.Supplier;

public interface SupplierMapper {
	//全部查询
	public List<Supplier> selectAll(Supplier supplier);
	//分页查询
	public int count(Supplier supplier);
	//删除
	public void deleteById(String id);
	//添加
	public int addUser(Supplier supplier);
	//修改
	public int updateUser(Supplier supplier);
}
