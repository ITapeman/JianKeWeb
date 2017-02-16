package com.JianKe.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.JianKe.biz.HtUserBiz;
import com.JianKe.pojo.HtUser;

public class HtXgPwdAction {
	private String mpass;
	private String newpass;
	private String renewpass;

	private HtUserBiz htUserBiz;
	
	
	public void setHtUserBiz(HtUserBiz htUserBiz) {
		this.htUserBiz = htUserBiz;
	}
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getNewpass() {
		return newpass;
	}
	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}
	public String getRenewpass() {
		return renewpass;
	}
	public void setRenewpass(String renewpass) {
		this.renewpass = renewpass;
	}
	
	public String htxgpwd() throws IOException{
		System.out.println("in htxgpwd ---");
		System.out.println("mpass--"+mpass);
		System.out.println("newpass--"+newpass);
		System.out.println("renewpass--"+renewpass);
		
		 HttpServletRequest request=ServletActionContext.getRequest();  
         HttpSession session=request.getSession();  
         HtUser htUser = (HtUser)session.getAttribute("htUser");
         String name = htUser.getHname();
         String oldpwd = htUser.getHpwd();
         int hid = htUser.getHid();
         System.out.println("oldpwd--"+oldpwd);
         if(oldpwd.equals(mpass)){
        	 HtUser htUser2 = new HtUser(hid,name , newpass);
        	 htUserBiz.htXgpwd(htUser2);
        	 return "success";
         }else{
        	 HttpServletResponse response = ServletActionContext.getResponse();
        	 response.getWriter().write("<font color='red'>新旧密码不一致，请重新填写！</font>");
        	 return "fail";
         }
		
	}
	
}
