package com.JianKe.pojo;

import java.util.Set;

public class Goods_Category {
	private int cid;
	private String cname;
	
	private Set<Goods> goods;
	
	public Goods_Category() {}
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Set<Goods> getGoods() {
		return goods;
	}
	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}
	
	
}
