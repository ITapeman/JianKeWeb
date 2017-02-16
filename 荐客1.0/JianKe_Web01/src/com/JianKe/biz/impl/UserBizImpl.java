package com.JianKe.biz.impl;

import com.JianKe.biz.UserBiz;
import com.JianKe.dao.UserDAO;
import com.JianKe.pojo.User;


public class UserBizImpl implements UserBiz{
	
	private UserDAO userDAO = null;
	
	public void setUserDAO(UserDAO userDAO){
		this.userDAO = userDAO;
	}
	
	public User login(String uname,String pwd){
		return userDAO.getUser(uname, pwd);}

	
	public void register(User user) {
		userDAO.save(user);

	}

	public void update(User user) {
		// TODO Auto-generated method stub
		userDAO.update(user);
	}

	public User getUserById(int uid) {
		return userDAO.get(uid);
	}
	
}
