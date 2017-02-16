package com.JianKe.biz.impl;

import java.util.List;

import com.JianKe.biz.ProvinceBiz;
import com.JianKe.dao.ProvinceDAO;
import com.JianKe.pojo.Province;

public class ProvinceBizImpl implements ProvinceBiz{
	
	private ProvinceDAO provinceDAO = null;
	
	public void setProvinceDAO(ProvinceDAO provinceDAO) {
		this.provinceDAO = provinceDAO;
	}

	public List<Province> getProvince() {
		return provinceDAO.getAll();
	}
	
	

}
