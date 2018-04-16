package com.etc.repair.vo;

import java.sql.Date;

public class Orders {
	private String oid;
	private String username;
	private String sname;
	private Double price;
	private Integer sstate;
	private Integer ustate;
	private Date date;
	private String fault;
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getSstate() {
		return sstate;
	}
	public void setSstate(Integer sstate) {
		this.sstate = sstate;
	}
	public Integer getUstate() {
		return ustate;
	}
	public void setUstate(Integer ustate) {
		this.ustate = ustate;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getFault() {
		return fault;
	}
	public void setFault(String fault) {
		this.fault = fault;
	}
	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", username=" + username + ", sname=" + sname + ", price=" + price + ", sstate="
				+ sstate + ", ustate=" + ustate + ", date=" + date + ", fault=" + fault + "]";
	}
	
}
