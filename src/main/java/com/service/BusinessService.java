package com.service;

import java.util.List;

import com.entity.Business;

public interface BusinessService {	
	public List<Business> selectAll(Business business);
	
	public int count(Business business);

	public void deleteById(String id);

	public int addUser(Business business);

	public int updateUser(Business business);

}
