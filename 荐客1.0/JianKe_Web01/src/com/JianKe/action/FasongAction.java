package com.JianKe.action;

import com.JianKe.biz.PrivilegeBiz;
import com.JianKe.pojo.Privilege;
import com.opensymphony.xwork2.ActionContext;

public class FasongAction{
	
	private PrivilegeBiz privilegeBiz;
	private int pid;
	
	public PrivilegeBiz getPrivilegeBiz() {
		return privilegeBiz;
	}
	public void setPrivilegeBiz(PrivilegeBiz privilegeBiz) {
		this.privilegeBiz = privilegeBiz;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public String execute(){
		Privilege privilege = privilegeBiz.getPrivilege(pid);
		ActionContext.getContext().getSession().put("fasong", privilege);
		return "success";
	}
	
	
}

