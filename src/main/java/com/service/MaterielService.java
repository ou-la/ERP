package com.service;

import java.util.List;

import com.entity.Materiel;

public interface MaterielService {
	
	public List<Materiel> selectAll(Materiel materiel);
	
	public int count(Materiel materiel);

	public void deleteById(String id);

	public int addUser(Materiel materiel);

	public int updateUser(Materiel materiel);

	public int updateInventory(Materiel materiel);

	public int updateExport(Materiel materiel);
}
