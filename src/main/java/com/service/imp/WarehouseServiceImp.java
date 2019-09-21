package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Warehouse;
import com.mapper.WarehouseMapper;
import com.service.WarehouseService;

@Service("WarehouseService")
public class WarehouseServiceImp implements WarehouseService {
	
	@Autowired
	private WarehouseMapper war;
	
	@Override
	public List<Warehouse> selectAll(Warehouse warehouse) {
		// TODO Auto-generated method stub
		List<Warehouse> warList = war.selectAll(warehouse);
		return warList;
	}

	@Override
	public int count(Warehouse warehouse) {
		// TODO Auto-generated method stub
		return war.count(warehouse);
	}
	
	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
		war.deleteById(id);
	}

	@Override
	public int addUser(Warehouse warehouse) {
		// TODO Auto-generated method stub
		war.addUser(warehouse);
		return 1;
	}

	@Override
	public int updateUser(Warehouse warehouse) {
		// TODO Auto-generated method stub
		war.updateUser(warehouse);
		return 1;
	}
}
