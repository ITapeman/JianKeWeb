package com.JianKe.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.JianKe.dao.MenuDAO;
import com.JianKe.dao.base.BaseDAOImpl;
import com.JianKe.pojo.Menu;

public class MenuDAOImpl extends BaseDAOImpl<Menu> implements MenuDAO {

	

	/**
	 * 分页查询
	 * @param hql 查询条件
	 * @param offset 开始记录
	 * @param length 一次查询几条
	 * @return 查询的记录集合
	 */
	@SuppressWarnings("unchecked")
	public List<Menu> queryForPage(String hql, int offset, int length) {
		Session session = this.getSession();
		Query q = session.createQuery(hql);
		q.setFirstResult(offset);//从第offset条开始
		q.setMaxResults(length);//取出length条记录
		List<Menu> list = q.list();
		System.out.println(list.size());
		/*session.close();*/
		return list;
	}
	
	public int getAllRowCount(String hql) {
		return this.getHibernateTemplate().find(hql).size();
	}

	@SuppressWarnings("unchecked")
	public List<Menu> getMenuByName(String mname) {
		
		String queryString = "from Menu menu where menu.mname like :mname";
		Session session = this.getSession();
		Query query = session.createQuery(queryString);
		query.setString("mname", "%"+mname+"%");
		List<Menu> menulist = query.list();
		return menulist;
	}

	public List<Menu> getListbycid(int menu_cid) {
		String hql ="from Menu where menu_cid=?";
		Object[] params={menu_cid};
		List<Menu> menus=getHibernateTemplate().find(hql,params);
		return menus;
	}

}
