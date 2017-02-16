package com.JianKe.action;

import com.JianKe.biz.HtUserBiz;
import com.JianKe.pojo.HtUser;
import com.opensymphony.xwork2.ActionContext;

public class HtLoginAction {
	private HtUserBiz htUserBiz;
	private String hname;
	private String hpwd;
	
	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHpwd() {
		return hpwd;
	}

	public void setHpwd(String hpwd) {
		this.hpwd = hpwd;
	}

	public void setHtUserBiz(HtUserBiz htUserBiz) {
		this.htUserBiz = htUserBiz;
	}

	public String htlogin(){
		HtUser htUser = htUserBiz.htLogin(hname, hpwd); 
		if(htUser != null){
			ActionContext.getContext().getSession().put("htUser", htUser);
			return "success";
		}else{
			ActionContext.getContext().getSession().put("TiShi","用户名密码不匹配，请重新输入");
			return "fail";
		}
	}
}
