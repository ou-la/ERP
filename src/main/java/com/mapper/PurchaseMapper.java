package com.mapper;

import java.util.List;

import com.entity.Purchase;

public interface PurchaseMapper {
	//全部查询
	public List<Purchase> selectAll(Purchase purchase);
	//分页查询
	public int count(Purchase purchase);
	//删除
	public void deleteById(String id);
	//添加
	public int addUser(Purchase purchase);
	//修改
	public int updateUser(Purchase purchase);
	//物料修改
	public int updateMateriel(Purchase purchase);
	//库存修改
	public int updateStock(Purchase purchase);
	//物品查询
	public List<Purchase> selectCommodity(Purchase purchase);
}
