package com.JianKe.dao.impl;

import java.util.List;

import com.JianKe.dao.HtUserDAO;
import com.JianKe.dao.base.BaseDAOImpl;
import com.JianKe.pojo.HtUser;

public class HtUserDAOImpl extends BaseDAOImpl<HtUser> implements HtUserDAO {

	public HtUser getHtUser(String hname, String hpwd) {
		String hql = "from HtUser where hname = ? and hpwd = ? " ;
		Object[] params = {hname , hpwd };
		List<HtUser> htUserList = getHibernateTemplate().find(hql, params);
		return htUserList!=null && htUserList.size()>0 ? htUserList.get(0) : null ;
	}
}