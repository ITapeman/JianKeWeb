package com.JianKe.action;

import java.util.List;

import com.JianKe.biz.Menu_CategoryBiz;
import com.JianKe.pojo.Menu_Category;
import com.JianKe.pojo.User;
import com.opensymphony.xwork2.ActionContext;

public class personmeungateAction {

	private Menu_CategoryBiz menu_CategoryBiz=null;
	
	public Menu_CategoryBiz getMenu_CategoryBiz() {
		return menu_CategoryBiz;
	}

	public void setMenu_CategoryBiz(Menu_CategoryBiz menu_CategoryBiz) {
		this.menu_CategoryBiz = menu_CategoryBiz;
	}

	private String cgory(){
		User currUser = (User)ActionContext.getContext().getSession().get("CurrentUser");
		int uid= currUser.getUid();	
		//获取菜谱分类
		List<Menu_Category> menu_CategoryBizList = menu_CategoryBiz.getAllMenuCategroy();
		ActionContext.getContext().getSession().put("menu_CategoryBizList", menu_CategoryBizList);
		return "success";
	}
	
}
