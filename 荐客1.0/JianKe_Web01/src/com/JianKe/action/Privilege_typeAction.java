package com.JianKe.action;

import java.util.List;

import com.JianKe.biz.PrivilegeBiz;
import com.JianKe.pojo.Privilege;
import com.opensymphony.xwork2.ActionContext;

public class Privilege_typeAction {
	private PrivilegeBiz privilegeBiz=null;
	private int type;
	
	public PrivilegeBiz getPrivilegeBiz() {
		return privilegeBiz;
	}
	public void setPrivilegeBiz(PrivilegeBiz privilegeBiz) {
		this.privilegeBiz = privilegeBiz;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	public String execute(){
		List<Privilege> privileges = privilegeBiz.getList(type);
		ActionContext.getContext().getSession().put("privileges", privileges);
		return "success";
	}

	
}
