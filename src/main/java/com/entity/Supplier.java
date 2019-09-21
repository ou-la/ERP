package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Supplier")
public class Supplier {
	private Integer supplier_id;
	private String supplier_name;
	private String supplier_materiel;
	private String supplier_type;
	private String supplier_linkman;
	private String supplier_phone;
	private String supplier_contact_another;
	private String supplier_address;
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;

	public Supplier() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Supplier(Integer supplier_id, String supplier_name, String supplier_materiel, String supplier_type,
			String supplier_linkman, String supplier_phone, String supplier_contact_another, String supplier_address,
			String limits, int offset, int limit, int allPageNumber) {
		super();
		this.supplier_id = supplier_id;
		this.supplier_name = supplier_name;
		this.supplier_materiel = supplier_materiel;
		this.supplier_type = supplier_type;
		this.supplier_linkman = supplier_linkman;
		this.supplier_phone = supplier_phone;
		this.supplier_contact_another = supplier_contact_another;
		this.supplier_address = supplier_address;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumber = allPageNumber;
	}

	public Integer getSupplier_id() {
		return supplier_id;
	}

	public void setSupplier_id(Integer supplier_id) {
		this.supplier_id = supplier_id;
	}

	public String getSupplier_name() {
		return supplier_name;
	}

	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}

	public String getSupplier_materiel() {
		return supplier_materiel;
	}

	public void setSupplier_materiel(String supplier_materiel) {
		this.supplier_materiel = supplier_materiel;
	}

	public String getSupplier_type() {
		return supplier_type;
	}

	public void setSupplier_type(String supplier_type) {
		this.supplier_type = supplier_type;
	}

	public String getSupplier_linkman() {
		return supplier_linkman;
	}

	public void setSupplier_linkman(String supplier_linkman) {
		this.supplier_linkman = supplier_linkman;
	}

	public String getSupplier_phone() {
		return supplier_phone;
	}

	public void setSupplier_phone(String supplier_phone) {
		this.supplier_phone = supplier_phone;
	}

	public String getSupplier_contact_another() {
		return supplier_contact_another;
	}

	public void setSupplier_contact_another(String supplier_contact_another) {
		this.supplier_contact_another = supplier_contact_another;
	}

	public String getSupplier_address() {
		return supplier_address;
	}

	public void setSupplier_address(String supplier_address) {
		this.supplier_address = supplier_address;
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
		return "Supplier [supplier_id=" + supplier_id + ", supplier_name=" + supplier_name + ", supplier_materiel="
				+ supplier_materiel + ", supplier_type=" + supplier_type + ", supplier_linkman=" + supplier_linkman
				+ ", supplier_phone=" + supplier_phone + ", supplier_contact_another=" + supplier_contact_another
				+ ", supplier_address=" + supplier_address + ", limits=" + limits + ", offset=" + offset + ", limit="
				+ limit + ", allPageNumber=" + allPageNumber + "]";
	}

	
}
