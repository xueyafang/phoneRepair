package com.etc.repair.vo;

public class Store {
	private Integer sid;
	private String susername;
	private String spassword;
	private String sname;
	private String saddress;
	private String spic;
	private String stime;
	private String smajor;
	private String sdesc;
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSusername() {
		return susername;
	}
	public void setSusername(String susername) {
		this.susername = susername;
	}
	public String getSpassword() {
		return spassword;
	}
	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSaddress() {
		return saddress;
	}
	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}
	public String getSpic() {
		return spic;
	}
	public void setSpic(String spic) {
		this.spic = spic;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	
	public String getSmajor() {
		return smajor.replaceAll("-", " ");
	}
	public void setSmajor(String smajor) {
		this.smajor = smajor;
	}
	public String getSdesc() {
		return sdesc;
	}
	public void setSdesc(String sdesc) {
		this.sdesc = sdesc;
	}
	@Override
	public String toString() {
		return "Store [sid=" + sid + ", susername=" + susername + ", spassword=" + spassword + ", sname=" + sname
				+ ", saddress=" + saddress + ", spic=" + spic + ", stime=" + stime + ", smajor=" + smajor + ", sdesc="
				+ sdesc + "]";
	}
}
