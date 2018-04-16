package com.etc.repair.vo;

public class City {
	private Integer cityId;
	private Integer provinceId;
	private String name;
	public Integer getCityId() {
		return cityId;
	}
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}
	public Integer getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(Integer provinceId) {
		this.provinceId = provinceId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "City [cityId=" + cityId + ", provinceId=" + provinceId + ", name=" + name + "]";
	}
	
}
