package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Business;
import com.mapper.BusinessMapper;
import com.service.BusinessService;

@Service("BusinessService")
public class BusinessServiceImp implements BusinessService{

	@Autowired
	private BusinessMapper bus;
	
	@Override
	public List<Business> selectAll(Business business) {
		// TODO Auto-generated method stub
		List<Business> businesss = bus.selectAll(business);
		return businesss;
	}

	@Override
	public int count(Business business) {
		// TODO Auto-generated method stub
		return bus.count(business);
	}

	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
		bus.deleteById(id);
	}

	@Override
	public int addUser(Business business) {
		// TODO Auto-generated method stub
		bus.addUser(business);
		return 1;
	}

	@Override
	public int updateUser(Business business) {
		// TODO Auto-generated method stub
		bus.updateUser(business);
		return 1;
	}

}
