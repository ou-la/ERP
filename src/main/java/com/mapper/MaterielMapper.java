package com.mapper;

import java.util.List;

import com.entity.Materiel;

public interface MaterielMapper {
	//全部查询
	public List<Materiel> selectAll(Materiel materiel);
	//分页查询
	public int count(Materiel materiel);
	//删除
	public void deleteById(String id);
	//添加
	public int addUser(Materiel materiel);
	//修改
	public int updateUser(Materiel materiel);
	//盘库修改
	public int updateInventory(Materiel materiel);
	//出库修改
	public int updateExport(Materiel materiel);
}
