package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Materiel;
import com.mapper.MaterielMapper;
import com.service.MaterielService;

@Service("MaterielService")
public class MaterielServiceImp implements MaterielService{
	
	@Autowired
	private MaterielMapper mate;
	
	@Override
	public List<Materiel> selectAll(Materiel materiel) {
		// TODO Auto-generated method stub
		List<Materiel> suppliers = mate.selectAll(materiel);
		return suppliers;
	}

	@Override
	public int count(Materiel materiel) {
		// TODO Auto-generated method stub
		return mate.count(materiel);
	}
	
	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
		mate.deleteById(id);
	}

	@Override
	public int addUser(Materiel materiel) {
		// TODO Auto-generated method stub
		mate.addUser(materiel);
		return 1;
	}

	@Override
	public int updateUser(Materiel materiel) {
		// TODO Auto-generated method stub
		mate.updateUser(materiel);
		return 1;
	}

	@Override
	public int updateInventory(Materiel materiel) {
		// TODO Auto-generated method stub
		mate.updateInventory(materiel);
		return 1;
	}

	@Override
	public int updateExport(Materiel materiel) {
		// TODO Auto-generated method stub
		mate.updateExport(materiel);
		return 1;
	}
}
