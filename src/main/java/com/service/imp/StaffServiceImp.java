package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Staff;
import com.mapper.StaffMapper;
import com.service.StaffService;

@Service("StaffService")
public class StaffServiceImp implements StaffService{

	@Autowired
	private StaffMapper sta;

	@Override
	public List<Staff> selectAll(Staff staff) {
		// TODO Auto-generated method stub
		List<Staff> staffs = sta.selectAll(staff);
		return staffs;
	}

	@Override
	public int count(Staff staff) {
		// TODO Auto-generated method stub
		return sta.count(staff);
	}

	@Override
	public int countLogin(String staff_name) {
		// TODO Auto-generated method stub
		return sta.countLogin(staff_name);
	}

	@Override
	public void deleteById(String staff_name) {
		// TODO Auto-generated method stub
		sta.deleteById(staff_name);
	}

	@Override
	public int addUser(Staff staff) {
		// TODO Auto-generated method stub
		sta.addUser(staff);
		return 1;
	}

	@Override
	public int updateUser(Staff staff) {
		// TODO Auto-generated method stub
		sta.updateUser(staff);
		return 1;
	}

}
