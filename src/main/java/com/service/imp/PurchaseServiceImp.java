package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Purchase;
import com.mapper.PurchaseMapper;
import com.service.PurchaseService;

@Service("PurchaseService")
public class PurchaseServiceImp implements PurchaseService{

	@Autowired
	private PurchaseMapper pur;
	
	@Override
	public List<Purchase> selectAll(Purchase purchase) {
		// TODO Auto-generated method stub
		List<Purchase> purchases = pur.selectAll(purchase);
		return purchases;
	}

	@Override
	public int count(Purchase purchase) {
		// TODO Auto-generated method stub
		return pur.count(purchase);
	}
	
	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
		pur.deleteById(id);
	}

	@Override
	public int addUser(Purchase purchase) {
		// TODO Auto-generated method stub
		pur.addUser(purchase);
		return 1;
	}

	@Override
	public int updateUser(Purchase purchase) {
		// TODO Auto-generated method stub
		pur.updateUser(purchase);
		return 1;
	}

	@Override
	public int updateMateriel(Purchase purchase) {
		pur.updateMateriel(purchase);
		return 1;
	}

	@Override
	public int updateStock(Purchase purchase) {
		// TODO Auto-generated method stub
		pur.updateStock(purchase);
		return 1;
	}

	@Override
	public List<Purchase> selectCommodity(Purchase purchase) {
		// TODO Auto-generated method stub
		List<Purchase> purchases = pur.selectCommodity(purchase);
		return purchases;
	}
}
