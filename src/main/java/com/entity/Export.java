package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Export")
public class Export {
	private Integer bill_id;
	private String bill_type;
	private String export_staff;
	private String export_date;
	private String export_commodity;
	private String export_commodity_number;
	private String export_commodity_price;
	private String export_price;
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;

	public Export() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Export(Integer bill_id, String bill_type, String export_staff, String export_date, String export_commodity,
			String export_commodity_number, String export_commodity_price, String export_price, String limits,
			int offset, int limit, int allPageNumber) {
		super();
		this.bill_id = bill_id;
		this.bill_type = bill_type;
		this.export_staff = export_staff;
		this.export_date = export_date;
		this.export_commodity = export_commodity;
		this.export_commodity_number = export_commodity_number;
		this.export_commodity_price = export_commodity_price;
		this.export_price = export_price;
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

	public String getExport_staff() {
		return export_staff;
	}

	public void setExport_staff(String export_staff) {
		this.export_staff = export_staff;
	}

	public String getExport_date() {
		return export_date;
	}

	public void setExport_date(String export_date) {
		this.export_date = export_date;
	}

	public String getExport_commodity() {
		return export_commodity;
	}

	public void setExport_commodity(String export_commodity) {
		this.export_commodity = export_commodity;
	}

	public String getExport_commodity_number() {
		return export_commodity_number;
	}

	public void setExport_commodity_number(String export_commodity_number) {
		this.export_commodity_number = export_commodity_number;
	}

	public String getExport_commodity_price() {
		return export_commodity_price;
	}

	public void setExport_commodity_price(String export_commodity_price) {
		this.export_commodity_price = export_commodity_price;
	}

	public String getExport_price() {
		return export_price;
	}

	public void setExport_price(String export_price) {
		this.export_price = export_price;
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
		return "Export [bill_id=" + bill_id + ", bill_type=" + bill_type + ", export_staff=" + export_staff
				+ ", export_date=" + export_date + ", export_commodity=" + export_commodity
				+ ", export_commodity_number=" + export_commodity_number + ", export_commodity_price="
				+ export_commodity_price + ", export_price=" + export_price + ", limits=" + limits + ", offset="
				+ offset + ", limit=" + limit + ", allPageNumber=" + allPageNumber + "]";
	}

}
