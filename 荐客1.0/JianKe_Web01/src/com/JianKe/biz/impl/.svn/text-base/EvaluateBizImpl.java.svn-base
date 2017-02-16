package com.JianKe.biz.impl;

import java.util.List;

import com.JianKe.biz.EvaluateBiz;
import com.JianKe.dao.EvaluateDAO;
import com.JianKe.dao.ShopDAO;
import com.JianKe.hibernate.util.ListUtil;
import com.JianKe.pojo.Evaluate;
import com.JianKe.pojo.PageBean;
import com.JianKe.pojo.User;

public class EvaluateBizImpl implements EvaluateBiz{
	
	private EvaluateDAO evaluateDAO = null;
	private ShopDAO shopDAO = null;
	
	
	
	public void setShopDAO(ShopDAO shopDAO) {
		this.shopDAO = shopDAO;
	}

	public void setEvaluateDAO(EvaluateDAO evaluateDAO) {
		this.evaluateDAO = evaluateDAO;
	}

	public List<Evaluate> getEvaluate(int sid) {
		return ListUtil.getInstance().setToList(shopDAO.get(sid).getEvaluates());
	}

	public void delEvaluate(int eid) {
		evaluateDAO.del(evaluateDAO.get(eid));
	}

	public void addEvaluate(Evaluate evaluate) {
		evaluateDAO.save(evaluate);
	}

	public PageBean queryForPageByShop(int pageSize, int page, int shopId) {
		final String hql = "from Evaluate where sid = '"+shopId+"'";
		int allRow = evaluateDAO.getAllRowCount(hql);//总记录数
		int totalPage = PageBean.countTatalPage(pageSize, allRow);//总页数
		final int offset = PageBean.countOffset(pageSize, page);//当前页开始记录
		final int length = pageSize;//每页记录数
		final int currentPage = PageBean.countCurrentPage(page);
		List list = evaluateDAO.queryForPage(hql, offset, length);
		
		//将分页信息保存到bean中 
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setEvaluates(list);
		pageBean.init();
		return pageBean;
	}


	
	
}
