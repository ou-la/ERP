package com.service;

import java.util.List;

import com.entity.Sale;

public interface SaleService {
public List<Sale> selectAll(Sale sale);
	
	public int count(Sale sale);

	public void deleteById(String id);

	public int addUser(Sale sale);

	public int updateUser(Sale sale);

}
