package com.JianKe.biz.impl;

import java.util.List;

import com.JianKe.biz.ChallengeBiz;
import com.JianKe.dao.ChallengeDAO;
import com.JianKe.dao.ShopDAO;
import com.JianKe.dao.UserDAO;
import com.JianKe.hibernate.util.ListUtil;
import com.JianKe.pojo.Challenge;
import com.JianKe.pojo.PageBean;

public class ChallengeBizImpl implements ChallengeBiz{
	private ChallengeDAO challengeDao = null;
	private ShopDAO shopDAO = null;
	private UserDAO userDAO = null;
	


	public void setShopDAO(ShopDAO shopDAO) {
		this.shopDAO = shopDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	
	public void setChallengeDao(ChallengeDAO challengeDao) {
		this.challengeDao = challengeDao;
	}

	//添加挑战菜谱
	public void addChanllenge(Challenge challenge) {
		challengeDao.save(challenge);
	}

	//删除挑战过的菜谱
	public void delChanllenge(int cid) {
		challengeDao.del(challengeDao.get(cid));
	}

	//根据店铺id获得挑战过的菜谱
	public List<Challenge> getChallengeBySid(int sid) {
		return ListUtil.getInstance().setToList(shopDAO.get(sid).getChallenges());
	}

	//根据用户id获得挑战过的菜谱
	public List<Challenge> getChallengeByUid(int uid) {
		return ListUtil.getInstance().setToList(userDAO.get(uid).getChallenges());
	}

	//根据挑战者ID获取单个菜谱
	
	public Challenge getChallengeByCid(int cid){
		return challengeDao.get(cid);
	}
	public Challenge getChallenge(int cid) {
		// TODO Auto-generated method stub
		return challengeDao.get(cid);
	}

	public PageBean queryForPage(int pageSize, int page, int sid) {
		final String hql = "from Challenge where sid= '"+sid+"'";
		int allRow = challengeDao.getAllRowCount(hql);//总记录数
		int totalPage = PageBean.countTatalPage(pageSize, allRow);//总页数
		final int offset = PageBean.countOffset(pageSize, page);//当前页开始记录
		final int length = pageSize;//每页记录数
		final int currentPage = PageBean.countCurrentPage(page);
		List list = challengeDao.queryForPage(hql, offset, length);
		
		//将分页信息保存到bean中 
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setChallenges(list);
		pageBean.init();
		return pageBean;
	}

	

}
