package com.mapper;

import java.util.List;

import com.entity.Sale;

public interface SaleMapper {
	//全部查询
		public List<Sale> selectAll(Sale sale);
		//分页查询
		public int count(Sale sale);
		//删除
		public void deleteById(String id);
		//添加
		public int addUser(Sale sale);
		//修改
		public int updateUser(Sale sale);
}
