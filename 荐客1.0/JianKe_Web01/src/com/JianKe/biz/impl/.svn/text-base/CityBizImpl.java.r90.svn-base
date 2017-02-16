package com.JianKe.biz.impl;

import com.JianKe.biz.CityBiz;
import com.JianKe.dao.CityDAO;

public class CityBizImpl implements CityBiz{
	private CityDAO cityDAO = null;
	
	public CityDAO getCityDAO() {
		return cityDAO;
	}

	public void setCityDAO(CityDAO cityDAO) {
		this.cityDAO = cityDAO;
	}

	public int getCityIDByCname(String cname) {
		return cityDAO.getcid(cname);
	}

}
