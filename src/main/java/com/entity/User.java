package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("User")
public class User {
	private Integer id;
	private String uname;
	private String pwd;
	private String phone;
	private String email;
	private String registerTime;
	private String status;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(Integer id, String uname, String pwd, String phone, String email, String registerTime, String status) {
		super();
		this.id = id;
		this.uname = uname;
		this.pwd = pwd;
		this.phone = phone;
		this.email = email;
		this.registerTime = registerTime;
		this.status = status;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", pwd=" + pwd + ", phone=" + phone + ", email=" + email
				+ ", registerTime=" + registerTime + ", status=" + status + "]";
	}

}
