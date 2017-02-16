package com.JianKe.action;

import java.util.List;

import com.JianKe.biz.GoodsBiz;
import com.JianKe.biz.ShopBiz;
import com.JianKe.pojo.Goods;
import com.JianKe.pojo.Shop;
import com.opensymphony.xwork2.ActionContext;

public class PostChallengeAction {
	private int sid;
	private GoodsBiz goodsBiz;
	private ShopBiz shopBiz;

	public void setShopBiz(ShopBiz shopBiz) {
		this.shopBiz = shopBiz;
	}
	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	
	public String postchallenge(){
		List<Goods> goods = goodsBiz.getGoodsListbysc(sid, 1);
		Shop shopone = shopBiz.getShop(sid);
		ActionContext.getContext().getSession().put("shopone", shopone);
		ActionContext.getContext().getSession().put("goods", goods);
		return "success";
	}
}
