package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Purchase;
import com.entity.Stock;
import com.mapper.StockMapper;
import com.service.StockService;

@Service("StockService")
public class StockServiceImp implements StockService{

	@Autowired
	private StockMapper pur;
	
	@Override
	public List<Stock> selectAll(Stock stock) {
		// TODO Auto-generated method stub
		List<Stock> stocks = pur.selectAll(stock);
		return stocks;
	}
	@Override
	public int count(Stock stock) {
		// TODO Auto-generated method stub
		return pur.count(stock);
	}
	@Override
	public int addUser(Stock stock) {
		// TODO Auto-generated method stub
		pur.addUser(stock);
		return 1;
	}
	@Override
	public int updateInventory(Stock stock) {
		// TODO Auto-generated method stub
		pur.updateInventory(stock);
		return 1;
	}
	@Override
	public int updateExport(Stock stock) {
		// TODO Auto-generated method stub
		pur.updateExport(stock);
		return 1;
	}
	@Override
	public void deleteById(String m_name) {
		// TODO Auto-generated method stub
		pur.deleteById(m_name);
	}

}
