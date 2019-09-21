package com.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Export;
import com.mapper.ExportMapper;
import com.service.ExportService;

@Service("ExportService")
public class ExportServiceImp implements ExportService {
	
	@Autowired
	private ExportMapper ex;
	
	@Override
	public List<Export> selectAll(Export export) {
		// TODO Auto-generated method stub
		List<Export> exports = ex.selectAll(export);
		return exports;
	}

	@Override
	public List<Export> onlyFind(Export export) {
		// TODO Auto-generated method stub
		List<Export> exportss = ex.selectAll(export);
		return exportss;
	}

	@Override
	public int count(Export export) {
		// TODO Auto-generated method stub
		return ex.count(export);
	}

	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
		ex.deleteById(id);
	}

	@Override
	public int addUser(Export export) {
		// TODO Auto-generated method stub
		ex.addUser(export);
		return 1;
	}

	@Override
	public int updateUser(Export export) {
		// TODO Auto-generated method stub
		ex.updateUser(export);
		return 1;
	}

}
