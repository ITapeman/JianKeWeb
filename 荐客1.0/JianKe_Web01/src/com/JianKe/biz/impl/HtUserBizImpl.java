package com.JianKe.biz.impl;

import com.JianKe.biz.HtUserBiz;
import com.JianKe.dao.HtUserDAO;
import com.JianKe.pojo.HtUser;


public class HtUserBizImpl implements HtUserBiz{
	
	private HtUserDAO htUserDAO = null;
	
	public void setHtUserDAO(HtUserDAO htUserDAO) {
		this.htUserDAO = htUserDAO;
	}

	//管理人员登录
	public HtUser htLogin(String hname, String hpwd) {
		return htUserDAO.getHtUser(hname, hpwd);
	}
	
	//管理员修改密码
	public void htXgpwd(HtUser htUser) {
		htUserDAO.update(htUser);
	}


}
