package com.service;

import java.util.List;

import com.entity.Export;

public interface ExportService {
	public List<Export> selectAll(Export export);
	
	public List<Export> onlyFind(Export export);
	
	public int count(Export export);

	public void deleteById(String id);

	public int addUser(Export export);

	public int updateUser(Export export);
}
