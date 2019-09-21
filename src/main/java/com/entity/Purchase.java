package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Purchase")
public class Purchase {
	private Integer bill_id;
	private String bill_type;
	private String purchase_commodity;
	private String purchase_supplier;
	private String purchase_commodity_uprice;
	private Integer purchase_commodity_number;
	private String purchase_commodity_price;
	private String purchase_price;
	private String purchase_staff;
	private String purchase_date;
	private String purchase_status;
	private String purchase_img;
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;
	
	private String materiel_id;//
	private String materie_name;//物料
	private String materie_specifications;//物料规格
	private String materie_type;//物料类型
	private String materie_price;//物料单价
	private String materie_supplier;//物料供应商
	public Purchase() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Purchase(Integer bill_id, String bill_type, String purchase_commodity, String purchase_supplier,
			String purchase_commodity_uprice, Integer purchase_commodity_number, String purchase_commodity_price,
			String purchase_price, String purchase_staff, String purchase_date, String purchase_status,
			String purchase_img, String limits, int offset, int limit, int allPageNumber, String materiel_id,
			String materie_name, String materie_specifications, String materie_type, String materie_price,
			String materie_supplier) {
		super();
		this.bill_id = bill_id;
		this.bill_type = bill_type;
		this.purchase_commodity = purchase_commodity;
		this.purchase_supplier = purchase_supplier;
		this.purchase_commodity_uprice = purchase_commodity_uprice;
		this.purchase_commodity_number = purchase_commodity_number;
		this.purchase_commodity_price = purchase_commodity_price;
		this.purchase_price = purchase_price;
		this.purchase_staff = purchase_staff;
		this.purchase_date = purchase_date;
		this.purchase_status = purchase_status;
		this.purchase_img = purchase_img;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumber = allPageNumber;
		this.materiel_id = materiel_id;
		this.materie_name = materie_name;
		this.materie_specifications = materie_specifications;
		this.materie_type = materie_type;
		this.materie_price = materie_price;
		this.materie_supplier = materie_supplier;
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
	public String getPurchase_commodity() {
		return purchase_commodity;
	}
	public void setPurchase_commodity(String purchase_commodity) {
		this.purchase_commodity = purchase_commodity;
	}
	public String getPurchase_supplier() {
		return purchase_supplier;
	}
	public void setPurchase_supplier(String purchase_supplier) {
		this.purchase_supplier = purchase_supplier;
	}
	public String getPurchase_commodity_uprice() {
		return purchase_commodity_uprice;
	}
	public void setPurchase_commodity_uprice(String purchase_commodity_uprice) {
		this.purchase_commodity_uprice = purchase_commodity_uprice;
	}
	public Integer getPurchase_commodity_number() {
		return purchase_commodity_number;
	}
	public void setPurchase_commodity_number(Integer purchase_commodity_number) {
		this.purchase_commodity_number = purchase_commodity_number;
	}
	public String getPurchase_commodity_price() {
		return purchase_commodity_price;
	}
	public void setPurchase_commodity_price(String purchase_commodity_price) {
		this.purchase_commodity_price = purchase_commodity_price;
	}
	public String getPurchase_price() {
		return purchase_price;
	}
	public void setPurchase_price(String purchase_price) {
		this.purchase_price = purchase_price;
	}
	public String getPurchase_staff() {
		return purchase_staff;
	}
	public void setPurchase_staff(String purchase_staff) {
		this.purchase_staff = purchase_staff;
	}
	public String getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(String purchase_date) {
		this.purchase_date = purchase_date;
	}
	public String getPurchase_status() {
		return purchase_status;
	}
	public void setPurchase_status(String purchase_status) {
		this.purchase_status = purchase_status;
	}
	public String getPurchase_img() {
		return purchase_img;
	}
	public void setPurchase_img(String purchase_img) {
		this.purchase_img = purchase_img;
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
	public String getMateriel_id() {
		return materiel_id;
	}
	public void setMateriel_id(String materiel_id) {
		this.materiel_id = materiel_id;
	}
	public String getMaterie_name() {
		return materie_name;
	}
	public void setMaterie_name(String materie_name) {
		this.materie_name = materie_name;
	}
	public String getMaterie_specifications() {
		return materie_specifications;
	}
	public void setMaterie_specifications(String materie_specifications) {
		this.materie_specifications = materie_specifications;
	}
	public String getMaterie_type() {
		return materie_type;
	}
	public void setMaterie_type(String materie_type) {
		this.materie_type = materie_type;
	}
	public String getMaterie_price() {
		return materie_price;
	}
	public void setMaterie_price(String materie_price) {
		this.materie_price = materie_price;
	}
	public String getMaterie_supplier() {
		return materie_supplier;
	}
	public void setMaterie_supplier(String materie_supplier) {
		this.materie_supplier = materie_supplier;
	}
	@Override
	public String toString() {
		return "Purchase [bill_id=" + bill_id + ", bill_type=" + bill_type + ", purchase_commodity="
				+ purchase_commodity + ", purchase_supplier=" + purchase_supplier + ", purchase_commodity_uprice="
				+ purchase_commodity_uprice + ", purchase_commodity_number=" + purchase_commodity_number
				+ ", purchase_commodity_price=" + purchase_commodity_price + ", purchase_price=" + purchase_price
				+ ", purchase_staff=" + purchase_staff + ", purchase_date=" + purchase_date + ", purchase_status="
				+ purchase_status + ", purchase_img=" + purchase_img + ", limits=" + limits + ", offset=" + offset
				+ ", limit=" + limit + ", allPageNumber=" + allPageNumber + ", materiel_id=" + materiel_id
				+ ", materie_name=" + materie_name + ", materie_specifications=" + materie_specifications
				+ ", materie_type=" + materie_type + ", materie_price=" + materie_price + ", materie_supplier="
				+ materie_supplier + "]";
	}
	
	
	
}
