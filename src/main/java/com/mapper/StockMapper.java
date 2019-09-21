package com.mapper;

import java.util.List;

import com.entity.Stock;

public interface StockMapper {
	//物料查询
	public List<Stock> selectAll(Stock Stock);
	//添加
	public int addUser(Stock Stock);
	//盘库修改
	public int updateInventory(Stock Stock);
	//出库修改
	public int updateExport(Stock Stock);
	//分页查询
	public int count(Stock Stock);
	//
	public void deleteById(String m_name);

}
