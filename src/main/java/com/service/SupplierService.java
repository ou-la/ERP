package com.service;

import java.util.List;

import com.entity.Supplier;

public interface SupplierService {
	
	public List<Supplier> selectAll(Supplier supplier);
	
	public int count(Supplier supplier);

	public void deleteById(String id);

	public int addUser(Supplier supplier);

	public int updateUser(Supplier supplier);

}
