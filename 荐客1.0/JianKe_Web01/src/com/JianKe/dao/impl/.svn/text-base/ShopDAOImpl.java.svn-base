package com.JianKe.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.JianKe.dao.ShopDAO;
import com.JianKe.dao.base.BaseDAOImpl;
import com.JianKe.pojo.Shop;

public class ShopDAOImpl extends BaseDAOImpl<Shop> implements ShopDAO {

	public List<Shop> getshopList(int cid) {
		String hql = "from Shop where cid = ?";
		List<Shop> shopList = getHibernateTemplate().find(hql, cid);
		return shopList;
	}

	/**
	 * 分页查询
	 * @param hql 查询条件
	 * @param offset 开始记录
	 * @param length 一次查询几条
	 * @return 查询的记录集合
	 */
	@SuppressWarnings("unchecked")
	public List<Shop> queryForPage(String hql, int offset, int length) {
		Session session = this.getSession();
		Query q = session.createQuery(hql);
		q.setFirstResult(offset);//从第offset条开始
		q.setMaxResults(length);//取出length条记录
		List<Shop> list = q.list();
		System.out.println(list.size());
		/*session.close();*/
		return list;
	}
	
	public int getAllRowCount(String hql) {
		return this.getHibernateTemplate().find(hql).size();
	}

	public List<Shop> getIndexShop(int isrecommend) {
		String hql = "from Shop where isrecommend = ?";
		return getHibernateTemplate().find(hql, isrecommend);
	}

}
