package com.mapper;

import java.util.List;

import com.entity.Export;

public interface ExportMapper {
	//全部查询
	public List<Export> selectAll(Export export);
	//全部查询
	public List<Export> onlyFind(Export export);
	//分页查询
	public int count(Export export);
	//删除
	public void deleteById(String id);
	//添加export
	public int addUser(Export export);
	//修改
	public int updateUser(Export export);
}
