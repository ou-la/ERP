package com.service;

import java.util.List;

import com.entity.Purchase;
import com.entity.Stock;

public interface StockService {
	//物料查询
	public List<Stock> selectAll(Stock stock);

	public int addUser(Stock stock);

	public int updateInventory(Stock stock);

	public int updateExport(Stock stock);
	
	public int count(Stock stock);

	public void deleteById(String m_name);

}
