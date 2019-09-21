package com.service;

import java.util.List;

import com.entity.Warehouse;

public interface WarehouseService {
	
	public List<Warehouse> selectAll(Warehouse warehouse);
	
	public int count(Warehouse warehouse);

	public void deleteById(String id);

	public int addUser(Warehouse warehouse);

	public int updateUser(Warehouse warehouse);
}
