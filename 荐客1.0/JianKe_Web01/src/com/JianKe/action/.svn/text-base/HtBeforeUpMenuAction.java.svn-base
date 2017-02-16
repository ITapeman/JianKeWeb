package com.JianKe.action;

import com.JianKe.biz.MenuBiz;
import com.JianKe.pojo.Menu;
import com.opensymphony.xwork2.ActionContext;

public class HtBeforeUpMenuAction {
	private int mid;
	private MenuBiz menuBiz;
	
	
	public MenuBiz getMenuBiz() {
		return menuBiz;
	}

	public void setMenuBiz(MenuBiz menuBiz) {
		this.menuBiz = menuBiz;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String htbeforupmenu(){
		Menu menu = menuBiz.getMenu(mid);
		ActionContext.getContext().getSession().put("onemenu", menu);
		return "success";
	}
}
