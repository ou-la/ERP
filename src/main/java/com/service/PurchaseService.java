package com.service;

import java.util.List;

import com.entity.Purchase;

public interface PurchaseService {
	
	public List<Purchase> selectAll(Purchase purchase);
	
	public int count(Purchase purchase);

	public void deleteById(String id);

	public int addUser(Purchase purchase);

	public int updateUser(Purchase purchase);
	
	public int updateMateriel(Purchase purchase);
	
	public int updateStock(Purchase purchase);

	public List<Purchase> selectCommodity(Purchase purchase);

}
