 
package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Supplier;
import com.mapper.SupplierMapper;
import com.service.SupplierService;

@Service("SupplierService")
public class SupplierServiceImp implements SupplierService{

	@Autowired
	private SupplierMapper sup;
	
	@Override
	public List<Supplier> selectAll(Supplier supplier) {
		// TODO Auto-generated method stub
		List<Supplier> suppliers = sup.selectAll(supplier);
		return suppliers;
	}

	@Override
	public int count(Supplier supplier) {
		// TODO Auto-generated method stub
		return sup.count(supplier);
	}

	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
		sup.deleteById(id);
	}

	@Override
	public int addUser(Supplier supplier) {
		// TODO Auto-generated method stub
		sup.addUser(supplier);
		return 1;
	}

	@Override
	public int updateUser(Supplier supplier) {
		// TODO Auto-generated method stub
		sup.updateUser(supplier);
		return 1;
	}
	
}
