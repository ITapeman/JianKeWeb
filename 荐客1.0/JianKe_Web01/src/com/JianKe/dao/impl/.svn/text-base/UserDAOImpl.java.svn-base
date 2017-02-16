package com.JianKe.dao.impl;

import java.util.List;

import com.JianKe.dao.UserDAO;
import com.JianKe.dao.base.BaseDAOImpl;
import com.JianKe.pojo.User;

public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO {

	public User getUser(String uname, String pwd) {
		System.out.println("2.UserDaoImpl is run------");
		System.out.println("uid , pwd is :"+uname+pwd);
		String hql = "from User where uname = ? and pwd = ? " ;
		Object[] params = {uname , pwd };

		List<User> userList = getHibernateTemplate().find(hql, params);
		return userList!=null && userList.size()>0 ? userList.get(0) : null ;
	}
}