package com.JianKe.action;

import java.util.List;
import java.util.Set;

import com.JianKe.biz.MenuBiz;
import com.JianKe.biz.UserBiz;
import com.JianKe.pojo.Menu;
import com.JianKe.pojo.User;
import com.opensymphony.xwork2.ActionContext;

	public class PersonalmenuAction {
	private int mid;
	private UserBiz userBiz;
	private MenuBiz menuBiz;
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public UserBiz getUserBiz() {
		return userBiz;
	}
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	public MenuBiz getMenuBiz() {
		return menuBiz;
	}
	public void setMenuBiz(MenuBiz menuBiz) {
		this.menuBiz = menuBiz;
	}
	
	public String peronalView(){
		if(mid == 0){
			mid = (Integer) ActionContext.getContext().getSession().get("mid");
			if(mid == 0){
				User currUser = (User)ActionContext.getContext().getSession().get("CurrentUser");
				mid = currUser.getUid();
			}
		}else {
			mid=this.mid;
			ActionContext.getContext().getSession().put("mid", mid);
		}
		User oneuser = userBiz.getUserById(mid);
		Set<User> uii = oneuser.getFriends();
		for(User ui : uii){
			System.out.println("懒加载"+ui.getNickname());
		}
		ActionContext.getContext().getSession().put("oneuser", oneuser);
		//获取我的菜谱
		List<Menu> menuList = menuBiz.getIssue(mid);
		ActionContext.getContext().getSession().put("menuList", menuList);
		//获取我挑战的菜谱
		return "success";
	}
	
	public String personmeis(){
		Menu menu  = menuBiz.getMenu(mid);
	    System.out.println("mid is -----------------: "+mid);
	    System.out.println(menu);
	    ActionContext.getContext().getSession().put("menu", menu);
		return "success2";
	}
}

