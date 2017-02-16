package com.JianKe.action;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.JianKe.biz.MenuBiz;
import com.JianKe.biz.UserBiz;
import com.JianKe.pojo.Menu;
import com.JianKe.pojo.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.sun.org.apache.xpath.internal.operations.Bool;

public class FriendAction {
	//待实现
	private int fid;
	private MenuBiz menuBiz;
	private UserBiz userBiz;
	
	public int getFid() {
		return fid;
	}
	public MenuBiz getMenuBiz() {
		return menuBiz;
	}
	public void setMenuBiz(MenuBiz menuBiz) {
		this.menuBiz = menuBiz;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	public String friendView(){
		Map<String, Object> session =ActionContext.getContext().getSession();
			if (fid==0) {
				User user=(User) session.get("currentUser");
				fid=user.getUid();
			}
			List<Menu> menuList =menuBiz.getIssue(getFid());
			session.put("menuList", menuList);
			return "success";
	}
	
	//关注
	public String addfriend(){
		 User user=(User) ActionContext.getContext().getSession().get("CurrentUser");
	     //LAZY
		 if(user != null){
			 user = userBiz.getUserById(user.getUid());
			 Boolean flag = false;
			 Set<User> userf = user.getFriends();
			 User focususer = userBiz.getUserById(fid);
			 for(User u : userf){
				 if(u.getUid() == fid){
					 flag = true;
					 break;
				 }
			 }
			 if(flag == true){
				 //表示已经关注，现在要取消关注 
				 userf.remove(focususer);
				 userBiz.update(user);
				 ActionContext.getContext().getSession().put("focus", 1);
				 System.out.println("已取消关注");
			 }else{
				 //表示未关注，现在要关注
				 userf.add(focususer);
				 userBiz.update(focususer);
				 ActionContext.getContext().getSession().put("focus", 0);
				 System.out.println("已关注");
			 }
			 return "success";
		 }else{
			 return "tologin";
		 }
	}
}
