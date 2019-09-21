package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Sale")
public class Sale {
	private Integer bill_id;
	private String bill_type;
	private String business_name;
	private String business_linkman;
	private String business_phone;
	private String business_contact_another;
	private String business_address;
	private String sale_pro;
	private String sale_pro_number;
	private String sale_pro_uprice;
	private String sale_pro_price;
	private String sale_price;
	private String sale_staff;
	private String sale_date;
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;

	public Sale() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Sale(Integer bill_id, String bill_type, String business_name, String business_linkman, String business_phone,
			String business_contact_another, String business_address, String sale_pro, String sale_pro_number,
			String sale_pro_uprice, String sale_pro_price, String sale_price, String sale_staff, String sale_date,
			String limits, int offset, int limit, int allPageNumber) {
		super();
		this.bill_id = bill_id;
		this.bill_type = bill_type;
		this.business_name = business_name;
		this.business_linkman = business_linkman;
		this.business_phone = business_phone;
		this.business_contact_another = business_contact_another;
		this.business_address = business_address;
		this.sale_pro = sale_pro;
		this.sale_pro_number = sale_pro_number;
		this.sale_pro_uprice = sale_pro_uprice;
		this.sale_pro_price = sale_pro_price;
		this.sale_price = sale_price;
		this.sale_staff = sale_staff;
		this.sale_date = sale_date;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumber = allPageNumber;
	}

	public Integer getBill_id() {
		return bill_id;
	}

	public void setBill_id(Integer bill_id) {
		this.bill_id = bill_id;
	}

	public String getBill_type() {
		return bill_type;
	}

	public void setBill_type(String bill_type) {
		this.bill_type = bill_type;
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

	public String getSale_pro() {
		return sale_pro;
	}

	public void setSale_pro(String sale_pro) {
		this.sale_pro = sale_pro;
	}

	public String getSale_pro_number() {
		return sale_pro_number;
	}

	public void setSale_pro_number(String sale_pro_number) {
		this.sale_pro_number = sale_pro_number;
	}

	public String getSale_pro_uprice() {
		return sale_pro_uprice;
	}

	public void setSale_pro_uprice(String sale_pro_uprice) {
		this.sale_pro_uprice = sale_pro_uprice;
	}

	public String getSale_pro_price() {
		return sale_pro_price;
	}

	public void setSale_pro_price(String sale_pro_price) {
		this.sale_pro_price = sale_pro_price;
	}

	public String getSale_price() {
		return sale_price;
	}

	public void setSale_price(String sale_price) {
		this.sale_price = sale_price;
	}

	public String getSale_staff() {
		return sale_staff;
	}

	public void setSale_staff(String sale_staff) {
		this.sale_staff = sale_staff;
	}

	public String getSale_date() {
		return sale_date;
	}

	public void setSale_date(String sale_date) {
		this.sale_date = sale_date;
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
		return "Sale [bill_id=" + bill_id + ", bill_type=" + bill_type + ", business_name=" + business_name
				+ ", business_linkman=" + business_linkman + ", business_phone=" + business_phone
				+ ", business_contact_another=" + business_contact_another + ", business_address=" + business_address
				+ ", sale_pro=" + sale_pro + ", sale_pro_number=" + sale_pro_number + ", sale_pro_uprice="
				+ sale_pro_uprice + ", sale_pro_price=" + sale_pro_price + ", sale_price=" + sale_price
				+ ", sale_staff=" + sale_staff + ", sale_date=" + sale_date + ", limits=" + limits + ", offset="
				+ offset + ", limit=" + limit + ", allPageNumber=" + allPageNumber + "]";
	}

}
