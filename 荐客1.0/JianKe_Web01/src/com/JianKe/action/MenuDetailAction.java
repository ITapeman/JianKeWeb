package com.JianKe.action;

import org.hibernate.Hibernate;

import com.JianKe.biz.MenuBiz;
import com.JianKe.pojo.Menu;
import com.opensymphony.xwork2.ActionContext;

public class MenuDetailAction {
	private int menuid;
	private MenuBiz menuBiz;
	
	public int getMenuid() {
		return menuid;
	}

	public void setMenuid(int menuid) {
		this.menuid = menuid;
	}

	public MenuBiz getMenuBiz() {
		return menuBiz;
	}

	public void setMenuBiz(MenuBiz menuBiz) {
		this.menuBiz = menuBiz;
	}

	public String getMenuByid(){
		System.out.println("menuid---------------------------"+menuid);
		if(menuid == 0){
			menuid = (Integer)ActionContext.getContext().getSession().get("menuid");
		}else{
			menuid = menuid;
		}
		Menu menu = menuBiz.getMenuByid(menuid);
		ActionContext.getContext().getSession().put("menuid", menuid);
		ActionContext.getContext().getSession().put("menubyid", menu);
		
		Hibernate.initialize(menu.getMenu_Category().getCname());
		Hibernate.initialize(menu.getUser().getNickname());
		return "success";
	}
	
}
