package com.JianKe.action;

import java.util.List;
import java.util.Set;

import com.JianKe.biz.MenuBiz;
import com.JianKe.biz.UserBiz;
import com.JianKe.pojo.Menu;
import com.JianKe.pojo.User;
import com.opensymphony.xwork2.ActionContext;

public class collectionAction {

	
	private int mid;
	private int uid;
	private MenuBiz menuBiz;
	private UserBiz userBiz;
	
	public MenuBiz getMenuBiz() {
		return menuBiz;
	}
	public void setMenuBiz(MenuBiz menuBiz) {
		this.menuBiz = menuBiz;
	}
	public UserBiz getUserBiz() {
		return userBiz;
	}
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	//添加收藏
	public String collectionview(){
		 System.out.println("mid,uid:"+mid+","+uid);
	     User user=(User) ActionContext.getContext().getSession().get("CurrentUser");
	     //LAZY
	     user = userBiz.getUserById(user.getUid());
	     Set<Menu> cMenus =user.getcMenus();  
	     for (Menu me : cMenus) {
			System.out.println(me.getcUsers());
		}
	     //查看是否已经关注
	     Boolean flag = false;
	     Set<Menu> muenss = user.getcMenus();
	     for(Menu mu : muenss){
	    	 if(mu.getMid() == mid){
	    		 flag = true;
	    		 break;
	    	 }
	     }
	     
	     if(flag == true){
	    	 //说明已经关注了，现在要取消关注
	    	 Menu menu= menuBiz.getMenu(mid);
	    	 cMenus.remove(menu);
	    	 menuBiz.updateMenu(menu);
	    	 ActionContext.getContext().getSession().put("flag", 1);
	     }else{
	    	 //说明还没有关注，现在要关注他
	    	 Menu menu= menuBiz.getMenu(mid);
	    	 cMenus.add(menu);	     
	    	 menuBiz.updateMenu(menu); 
	    	 ActionContext.getContext().getSession().put("flag", 0);
	     }
	    /* System.out.println(cMenus.size());
	     ActionContext.getContext().getSession().put("sc", "已收藏");*/
	     return "success";
	}
	//个人收藏
	public String collection(){
		Set<Menu> cMenus = null;
		 User user=(User) ActionContext.getContext().getSession().get("CurrentUser");
		 if(user != null){
			 uid = user.getUid();
			 user = userBiz.getUserById(uid);
			 cMenus =user.getcMenus();  
		 }else{
			 user = userBiz.getUserById(mid);
			 cMenus =user.getcMenus();
		 }
	    // List<Menu> cMenus2 = ListUtil.getInstance().setToList(cMenus);
	     System.out.print("_____"+cMenus);
	     ActionContext.getContext().getSession().put("cMenus", cMenus);
	     return "success";
	}

}
