package com.JianKe.dao.impl;

import java.util.List;

import com.JianKe.dao.GoodsDAO;
import com.JianKe.dao.base.BaseDAOImpl;
import com.JianKe.pojo.Goods;

public class GoodsDAOImpl extends BaseDAOImpl<Goods> implements GoodsDAO {

	public List<Goods> getGoodsBySC(int sid, int istsc) {
		String hql = "from Goods where sid = ? and istesecai = ?";
		Object[] parames = {sid,istsc};
		return  getHibernateTemplate().find(hql, parames);
	}

}
