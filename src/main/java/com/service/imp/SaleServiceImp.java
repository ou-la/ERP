package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Business;
import com.entity.Sale;
import com.mapper.SaleMapper;
import com.service.SaleService;

@Service("SaleService")
public class SaleServiceImp implements SaleService{

	@Autowired
	private SaleMapper sa;

	@Override
	public List<Sale> selectAll(Sale sale) {
		// TODO Auto-generated method stub
		List<Sale> Sales = sa.selectAll(sale);
		return Sales;
	}

	@Override
	public int count(Sale sale) {
		// TODO Auto-generated method stub
		return sa.count(sale);
	}

	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
		sa.deleteById(id);
	}

	@Override
	public int addUser(Sale sale) {
		// TODO Auto-generated method stub
		sa.addUser(sale);
		return 1;
	}

	@Override
	public int updateUser(Sale sale) {
		// TODO Auto-generated method stub
		sa.updateUser(sale);
		return 1;
	}

}
