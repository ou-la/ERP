package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Staff")
public class Staff {
	private String staff_name;
	private String staff_password;
	private String staff_sex;
	private String staff_age;
	private String staff_phone;
	private String staff_email;
	private String staff_post;
	private String staff_wages;
	private String staff_working_years;
	private String staff_status;
	
	private String limits;
	private int offset = 0;
	private int limit = 5;
	
	private int allPageNumber;

	public Staff() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Staff(String staff_name, String staff_password, String staff_sex, String staff_age, String staff_phone,
			String staff_email, String staff_post, String staff_wages, String staff_working_years, String staff_status,
			String limits, int offset, int limit, int allPageNumber) {
		super();
		this.staff_name = staff_name;
		this.staff_password = staff_password;
		this.staff_sex = staff_sex;
		this.staff_age = staff_age;
		this.staff_phone = staff_phone;
		this.staff_email = staff_email;
		this.staff_post = staff_post;
		this.staff_wages = staff_wages;
		this.staff_working_years = staff_working_years;
		this.staff_status = staff_status;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumber = allPageNumber;
	}

	public String getStaff_name() {
		return staff_name;
	}

	public void setStaff_name(String staff_name) {
		this.staff_name = staff_name;
	}

	public String getStaff_password() {
		return staff_password;
	}

	public void setStaff_password(String staff_password) {
		this.staff_password = staff_password;
	}

	public String getStaff_sex() {
		return staff_sex;
	}

	public void setStaff_sex(String staff_sex) {
		this.staff_sex = staff_sex;
	}

	public String getStaff_age() {
		return staff_age;
	}

	public void setStaff_age(String staff_age) {
		this.staff_age = staff_age;
	}

	public String getStaff_phone() {
		return staff_phone;
	}

	public void setStaff_phone(String staff_phone) {
		this.staff_phone = staff_phone;
	}

	public String getStaff_email() {
		return staff_email;
	}

	public void setStaff_email(String staff_email) {
		this.staff_email = staff_email;
	}

	public String getStaff_post() {
		return staff_post;
	}

	public void setStaff_post(String staff_post) {
		this.staff_post = staff_post;
	}

	public String getStaff_wages() {
		return staff_wages;
	}

	public void setStaff_wages(String staff_wages) {
		this.staff_wages = staff_wages;
	}

	public String getStaff_working_years() {
		return staff_working_years;
	}

	public void setStaff_working_years(String staff_working_years) {
		this.staff_working_years = staff_working_years;
	}

	public String getStaff_status() {
		return staff_status;
	}

	public void setStaff_status(String staff_status) {
		this.staff_status = staff_status;
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
		return "Staff [staff_name=" + staff_name + ", staff_password=" + staff_password + ", staff_sex=" + staff_sex
				+ ", staff_age=" + staff_age + ", staff_phone=" + staff_phone + ", staff_email=" + staff_email
				+ ", staff_post=" + staff_post + ", staff_wages=" + staff_wages + ", staff_working_years="
				+ staff_working_years + ", staff_status=" + staff_status + ", limits=" + limits + ", offset=" + offset
				+ ", limit=" + limit + ", allPageNumber=" + allPageNumber + "]";
	}

}
