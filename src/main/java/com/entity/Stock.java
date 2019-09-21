package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Stock")
public class Stock {
	private String stock_id;
	private String stock_name;
	private String stock_type;
	private String stock_specifications;
	private String stock_number;
	private String stock_actual_number;
	private String stock_price;
	private String stock_company;
	private String stock_describe;
	private Integer relation_id;
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;

	public Stock() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Stock(String stock_id, String stock_name, String stock_type, String stock_specifications,
			String stock_number, String stock_actual_number, String stock_price, String stock_company,
			String stock_describe, Integer relation_id, String limits, int offset, int limit, int allPageNumber) {
		super();
		this.stock_id = stock_id;
		this.stock_name = stock_name;
		this.stock_type = stock_type;
		this.stock_specifications = stock_specifications;
		this.stock_number = stock_number;
		this.stock_actual_number = stock_actual_number;
		this.stock_price = stock_price;
		this.stock_company = stock_company;
		this.stock_describe = stock_describe;
		this.relation_id = relation_id;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumber = allPageNumber;
	}

	public String getStock_id() {
		return stock_id;
	}

	public void setStock_id(String stock_id) {
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

	public String getStock_number() {
		return stock_number;
	}

	public void setStock_number(String stock_number) {
		this.stock_number = stock_number;
	}

	public String getStock_actual_number() {
		return stock_actual_number;
	}

	public void setStock_actual_number(String stock_actual_number) {
		this.stock_actual_number = stock_actual_number;
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

	public String getStock_describe() {
		return stock_describe;
	}

	public void setStock_describe(String stock_describe) {
		this.stock_describe = stock_describe;
	}

	public Integer getRelation_id() {
		return relation_id;
	}

	public void setRelation_id(Integer relation_id) {
		this.relation_id = relation_id;
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
		return "Stock [stock_id=" + stock_id + ", stock_name=" + stock_name + ", stock_type=" + stock_type
				+ ", stock_specifications=" + stock_specifications + ", stock_number=" + stock_number
				+ ", stock_actual_number=" + stock_actual_number + ", stock_price=" + stock_price + ", stock_company="
				+ stock_company + ", stock_describe=" + stock_describe + ", relation_id=" + relation_id + ", limits="
				+ limits + ", offset=" + offset + ", limit=" + limit + ", allPageNumber=" + allPageNumber + "]";
	}

}
