package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Warehouse")
public class Warehouse {
	private Integer warehouse_id;
	private String warehouse_name;
	private String warehouse_address;
	private String warehouse_describe;
	private String warehouse_man;
	private String warehouse_status;
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;

	private String stock_name;
	private String stock_specifications;
	private String stock_price;
	private String stock_company;
	private Integer stock_number;
	private Integer stock_actual_number;

	public String getStock_name() {
		return stock_name;
	}

	public void setStock_name(String stock_name) {
		this.stock_name = stock_name;
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

	public String getStock_company() {
		return stock_company;
	}

	public void setStock_company(String stock_company) {
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

	public Warehouse() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Warehouse(Integer warehouse_id, String warehouse_name, String warehouse_address, String warehouse_describe,
			String warehouse_man, String warehouse_status, String limits, int offset, int limit, int allPageNumber) {
		super();
		this.warehouse_id = warehouse_id;
		this.warehouse_name = warehouse_name;
		this.warehouse_address = warehouse_address;
		this.warehouse_describe = warehouse_describe;
		this.warehouse_man = warehouse_man;
		this.warehouse_status = warehouse_status;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumber = allPageNumber;
	}

	public Integer getWarehouse_id() {
		return warehouse_id;
	}

	public void setWarehouse_id(Integer warehouse_id) {
		this.warehouse_id = warehouse_id;
	}

	public String getWarehouse_name() {
		return warehouse_name;
	}

	public void setWarehouse_name(String warehouse_name) {
		this.warehouse_name = warehouse_name;
	}

	public String getWarehouse_address() {
		return warehouse_address;
	}

	public void setWarehouse_address(String warehouse_address) {
		this.warehouse_address = warehouse_address;
	}

	public String getWarehouse_describe() {
		return warehouse_describe;
	}

	public void setWarehouse_describe(String warehouse_describe) {
		this.warehouse_describe = warehouse_describe;
	}

	public String getWarehouse_man() {
		return warehouse_man;
	}

	public void setWarehouse_man(String warehouse_man) {
		this.warehouse_man = warehouse_man;
	}

	public String getWarehouse_status() {
		return warehouse_status;
	}

	public void setWarehouse_status(String warehouse_status) {
		this.warehouse_status = warehouse_status;
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
		return "Warehouse [warehouse_id=" + warehouse_id + ", warehouse_name=" + warehouse_name + ", warehouse_address="
				+ warehouse_address + ", warehouse_describe=" + warehouse_describe + ", warehouse_man=" + warehouse_man
				+ ", warehouse_status=" + warehouse_status + ", limits=" + limits + ", offset=" + offset + ", limit="
				+ limit + ", allPageNumber=" + allPageNumber + "]";
	}
	
}
