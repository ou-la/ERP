package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Business")
public class Business {
	private Integer business_id;
	private String business_name;
	private String business_linkman;
	private String business_phone;
	private String business_contact_another;
	private String business_address;
	private String business_type;
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;

	public Business() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Business(Integer business_id, String business_name, String business_linkman, String business_phone,
			String business_contact_another, String business_address, String business_type, String limits, int offset,
			int limit, int allPageNumber) {
		super();
		this.business_id = business_id;
		this.business_name = business_name;
		this.business_linkman = business_linkman;
		this.business_phone = business_phone;
		this.business_contact_another = business_contact_another;
		this.business_address = business_address;
		this.business_type = business_type;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumber = allPageNumber;
	}

	public Integer getBusiness_id() {
		return business_id;
	}

	public void setBusiness_id(Integer business_id) {
		this.business_id = business_id;
	}

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}

	public String getBusiness_linkman() {
		return business_linkman;
	}

	public void setBusiness_linkman(String business_linkman) {
		this.business_linkman = business_linkman;
	}

	public String getBusiness_phone() {
		return business_phone;
	}

	public void setBusiness_phone(String business_phone) {
		this.business_phone = business_phone;
	}

	public String getBusiness_contact_another() {
		return business_contact_another;
	}

	public void setBusiness_contact_another(String business_contact_another) {
		this.business_contact_another = business_contact_another;
	}

	public String getBusiness_address() {
		return business_address;
	}

	public void setBusiness_address(String business_address) {
		this.business_address = business_address;
	}

	public String getBusiness_type() {
		return business_type;
	}

	public void setBusiness_type(String business_type) {
		this.business_type = business_type;
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
		return "Business [business_id=" + business_id + ", business_name=" + business_name + ", business_linkman="
				+ business_linkman + ", business_phone=" + business_phone + ", business_contact_another="
				+ business_contact_another + ", business_address=" + business_address + ", business_type="
				+ business_type + ", limits=" + limits + ", offset=" + offset + ", limit=" + limit + ", allPageNumber="
				+ allPageNumber + "]";
	}
	
}
