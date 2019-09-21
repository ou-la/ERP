package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Materiel")
public class Materiel {
	private Integer materiel_id;
	private String materie_name;
	private String materie_type;
	private String materie_specifications; //物料规格
	private String materie_describe; //物料描述
	private String materie_price; //物料单价
	private String materie_company;//单位
	private String materie_number; //物料数量
	private String materie_supplier; //供应商
	private String materie_purchase_date; //进货日期
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;

	public Materiel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Materiel(Integer materiel_id, String materie_name, String materie_type, String materie_specifications,
			String materie_describe, String materie_price, String materie_company, String materie_number,
			String materie_supplier, String materie_purchase_date, String limits, int offset, int limit,
			int allPageNumber) {
		super();
		this.materiel_id = materiel_id;
		this.materie_name = materie_name;
		this.materie_type = materie_type;
		this.materie_specifications = materie_specifications;
		this.materie_describe = materie_describe;
		this.materie_price = materie_price;
		this.materie_company = materie_company;
		this.materie_number = materie_number;
		this.materie_supplier = materie_supplier;
		this.materie_purchase_date = materie_purchase_date;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumber = allPageNumber;
	}

	public Integer getMateriel_id() {
		return materiel_id;
	}

	public void setMateriel_id(Integer materiel_id) {
		this.materiel_id = materiel_id;
	}

	public String getMaterie_name() {
		return materie_name;
	}

	public void setMaterie_name(String materie_name) {
		this.materie_name = materie_name;
	}

	public String getMaterie_type() {
		return materie_type;
	}

	public void setMaterie_type(String materie_type) {
		this.materie_type = materie_type;
	}

	public String getMaterie_specifications() {
		return materie_specifications;
	}

	public void setMaterie_specifications(String materie_specifications) {
		this.materie_specifications = materie_specifications;
	}

	public String getMaterie_describe() {
		return materie_describe;
	}

	public void setMaterie_describe(String materie_describe) {
		this.materie_describe = materie_describe;
	}

	public String getMaterie_price() {
		return materie_price;
	}

	public void setMaterie_price(String materie_price) {
		this.materie_price = materie_price;
	}

	public String getMaterie_company() {
		return materie_company;
	}

	public void setMaterie_company(String materie_company) {
		this.materie_company = materie_company;
	}

	public String getMaterie_number() {
		return materie_number;
	}

	public void setMaterie_number(String materie_number) {
		this.materie_number = materie_number;
	}

	public String getMaterie_supplier() {
		return materie_supplier;
	}

	public void setMaterie_supplier(String materie_supplier) {
		this.materie_supplier = materie_supplier;
	}

	public String getMaterie_purchase_date() {
		return materie_purchase_date;
	}

	public void setMaterie_purchase_date(String materie_purchase_date) {
		this.materie_purchase_date = materie_purchase_date;
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
		return "Materiel [materiel_id=" + materiel_id + ", materie_name=" + materie_name + ", materie_type="
				+ materie_type + ", materie_specifications=" + materie_specifications + ", materie_describe="
				+ materie_describe + ", materie_price=" + materie_price + ", materie_company=" + materie_company
				+ ", materie_number=" + materie_number + ", materie_supplier=" + materie_supplier
				+ ", materie_purchase_date=" + materie_purchase_date + ", limits=" + limits + ", offset=" + offset
				+ ", limit=" + limit + ", allPageNumber=" + allPageNumber + "]";
	}

	
}
