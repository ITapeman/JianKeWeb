package com.JianKe.action;


import java.text.SimpleDateFormat;
import java.util.Date;

import com.JianKe.biz.ShopBiz;
import com.JianKe.pojo.Shop;
import com.opensymphony.xwork2.ActionContext;

public class HtBeforeAddAction {
	private int sid ;
	private ShopBiz shopBiz;
	

	public void setShopBiz(ShopBiz shopBiz) {
		this.shopBiz = shopBiz;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}
	
	public String execute(){
		Shop shop = shopBiz.getRemommendShops(sid);
		System.out.println(shop.getCity().getCname()+"懒加载--");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());
		System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
		ActionContext.getContext().getSession().put("shop", shop);
		ActionContext.getContext().getSession().put("date", date);
		
		return "success";
	}
}
