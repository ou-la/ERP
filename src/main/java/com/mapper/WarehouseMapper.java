package com.mapper;

import java.util.List;

import com.entity.Warehouse;

public interface WarehouseMapper {
	//全部查询
	public List<Warehouse> selectAll(Warehouse warehouse);
	//分页查询
	public int count(Warehouse warehouse);
	//删除
	public void deleteById(String id);
	//添加
	public int addUser(Warehouse warehouse);
	//修改
	public int updateUser(Warehouse warehouse);
	//物品查询

}
