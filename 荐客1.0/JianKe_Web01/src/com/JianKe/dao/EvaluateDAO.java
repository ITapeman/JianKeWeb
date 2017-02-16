package com.JianKe.dao;

import java.util.List;

import com.JianKe.dao.base.BaseDAO;
import com.JianKe.pojo.Evaluate;
import com.JianKe.pojo.PageBean;
import com.JianKe.pojo.Shop;

public interface EvaluateDAO extends BaseDAO<Evaluate>{
	
	/**
	 * 分页查询
	 * @param hql 查询条件
	 * @param offset 开始记录
	 * @param length 一次查询几条
	 * @return 查询的记录集合
	 */
	public List<Evaluate> queryForPage(final String hql,final int offset,final int length);
	
	/**
	 * 查询所有记录
	 * @param hql 查询条件
	 * @return 总记录数
	 */
	public int getAllRowCount(String hql);
}
