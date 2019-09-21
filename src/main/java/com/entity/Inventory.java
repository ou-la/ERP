package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Inventory")
public class Inventory {
	private Integer inventory_id;
	private Integer plan_id;
	private Integer stock_id;
	private String stock_name;
	private String stock_type;
	private String stock_specifications;
	private String stock_price;
	private Integer stock_company;
	private Integer stock_number;
	private Integer stock_actual_number;
	private String inventory_describe;
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;

	public Inventory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Inventory(Integer inventory_id, Integer plan_id, Integer stock_id, String stock_name, String stock_type,
			String stock_specifications, String stock_price, Integer stock_company, Integer stock_number,
			Integer stock_actual_number, String inventory_describe, String limits, int offset, int limit,
			int allPageNumber) {
		super();
		this.inventory_id = inventory_id;
		this.plan_id = plan_id;
		this.stock_id = stock_id;
		this.stock_name = stock_name;
		this.stock_type = stock_type;
		this.stock_specifications = stock_specifications;
		this.stock_price = stock_price;
		this.stock_company = stock_company;
		this.stock_number = stock_number;
		this.stock_actual_number = stock_actual_number;
		this.inventory_describe = inventory_describe;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumber = allPageNumber;
	}

	public Integer getInventory_id() {
		return inventory_id;
	}

	public void setInventory_id(Integer inventory_id) {
		this.inventory_id = inventory_id;
	}

	public Integer getPlan_id() {
		return plan_id;
	}

	public void setPlan_id(Integer plan_id) {
		this.plan_id = plan_id;
	}

	public Integer getStock_id() {
		return stock_id;
	}

	public void setStock_id(Integer stock_id) {
		this.stock_id = stock_id;
	}

	public String getStock_name() {
		return stock_name;
	}

	public void setStock_name(String stock_name) {
		this.stock_name = stock_name;
	}

	public String getStock_type() {
		return stock_type;
	}

	public void setStock_type(String stock_type) {
		this.stock_type = stock_type;
	}

	public String getStock_specifications() {
		return stock_specifications;
	}

	public void setStock_specifications(String stock_specifications) {
		this.stock_specifications = stock_specifications;
	}

	public String getStock_price() {
		return stock_price;
	}

	public void setStock_price(String stock_price) {
		this.stock_price = stock_price;
	}

	public Integer getStock_company() {
		return stock_company;
	}

	public void setStock_company(Integer stock_company) {
		this.stock_company = stock_company;
	}

	public Integer getStock_number() {
		return stock_number;
	}

	public void setStock_number(Integer stock_number) {
		this.stock_number = stock_number;
	}

	public Integer getStock_actual_number() {
		return stock_actual_number;
	}

	public void setStock_actual_number(Integer stock_actual_number) {
		this.stock_actual_number = stock_actual_number;
	}

	public String getInventory_describe() {
		return inventory_describe;
	}

	public void setInventory_describe(String inventory_describe) {
		this.inventory_describe = inventory_describe;
	}

	public String getLimits() {
		return limits;
	}

	public void setLimits(String limits) {
		this.limits = limits;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getAllPageNumber() {
		return allPageNumber;
	}

	public void setAllPageNumber(int allPageNumber) {
		this.allPageNumber = allPageNumber;
	}

	@Override
	public String toString() {
		return "Inventory [inventory_id=" + inventory_id + ", plan_id=" + plan_id + ", stock_id=" + stock_id
				+ ", stock_name=" + stock_name + ", stock_type=" + stock_type + ", stock_specifications="
				+ stock_specifications + ", stock_price=" + stock_price + ", stock_company=" + stock_company
				+ ", stock_number=" + stock_number + ", stock_actual_number=" + stock_actual_number
				+ ", inventory_describe=" + inventory_describe + ", limits=" + limits + ", offset=" + offset
				+ ", limit=" + limit + ", allPageNumber=" + allPageNumber + "]";
	}
	
	
}
