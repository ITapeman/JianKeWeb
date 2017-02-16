package com.JianKe.pojo;

import java.util.Set;

public class City {
	private int cityid;
	private String cname;
	private Set<Shop> shops;

	public City(){}
	
	public City(int cityid) {
		super();
		this.cityid = cityid;
	}

	public Set<Shop> getShops() {
		return shops;
	}
	
	public void setShops(Set<Shop> shops) {
		this.shops = shops;
	}

	public int getCityid() {
		return cityid;
	}


	public void setCityid(int cityid) {
		this.cityid = cityid;
	}


	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}
	
	
}
