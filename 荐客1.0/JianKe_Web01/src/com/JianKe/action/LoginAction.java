package com.JianKe.action;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.JianKe.biz.ShopBiz;
import com.JianKe.biz.UserBiz;
import com.JianKe.pojo.Shop;
import com.JianKe.pojo.User;
import com.opensymphony.xwork2.ActionContext;

public class LoginAction {
	private String uname;
	private String pwd;
	private UserBiz userBiz;
	private ShopBiz shopBiz;
	/*private int islogin;
	private int isclogin;*/
	
	public ShopBiz getShopBiz() {
		return shopBiz;
	}
	public void setShopBiz(ShopBiz shopBiz) {
		this.shopBiz = shopBiz;
	}
	public UserBiz getUserBiz() {
		return userBiz;
	}
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	
	public void setUname(String uname) {
		this.uname = uname;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
/*	public int getIslogin() {
		return islogin;
	}
	public void setIslogin(int islogin) {
		this.islogin = islogin;
	}
	public void setIsclogin(int isclogin) {
		this.isclogin = isclogin;
	}*/

	public String logins(){
		System.out.println("username and pwd is :"+uname+pwd);
		User user = userBiz.login(uname, pwd);
		
		if(user!=null){
			List<Shop> shopList = shopBiz.getAllShops();
			ActionContext.getContext().getSession().put("shops", shopList);
			ActionContext.getContext().getSession().put("CurrentUser", user);
			Set<User> users = user.getFriends();
			for(User u : users){
				System.out.println("懒加载"+u);
			} 
			int mid = user.getUid();
			ActionContext.getContext().getSession().put("mid", mid);
			/*if(islogin == 1){
				return "psuccess";//
			}
			if(isclogin == 3){
				return "csuccess";//去收藏页面
			}*/
			return "success";
		}else {
			return "fail";
		}
	}
	
	//dh 注销
		public String zhuxiao(){
			ActionContext context = ActionContext.getContext();
			Map<String, Object> session =context.getSession();
			session.remove("CurrentUser");
			return "zhuxiao";
			
		}
	
}
