package com.JianKe.dao.impl;

import java.util.List;

import com.JianKe.dao.CityDAO;
import com.JianKe.dao.base.BaseDAOImpl;
import com.JianKe.pojo.City;

public class CityDAOImpl extends BaseDAOImpl<City> implements CityDAO {

	public int getcid(String cname) {
		String hql = "from City where cname = ?";
		List<City> citys = getHibernateTemplate().find(hql, cname);
		return citys != null && citys.size() > 0 ? citys.get(0).getCityid() : -1;
	}

	
}
