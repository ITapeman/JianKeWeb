package com.JianKe.biz;

import java.util.List;

import com.JianKe.pojo.Challenge;
import com.JianKe.pojo.PageBean;

public interface ChallengeBiz {
	//添加挑战菜谱
	void addChanllenge(Challenge challenge);
	
	//删除挑战过的菜谱
	void delChanllenge(int cid);
	
	//根据店铺id获得挑战过的菜谱
	List<Challenge> getChallengeBySid(int sid);
	
	//根据用户id获得挑战过的菜谱
	List<Challenge> getChallengeByUid(int uid);

	//获取一条挑战菜谱
   Challenge getChallenge(int cid);
   
   //根据cid获取菜谱
   Challenge getChallengeByCid(int cid);
	
	/**
	 * 分页查询
	 * @param pageSize 每页显示多少条记录
	 * @param page 当前页
	 * @return 封装了分页信息的bean。
	 */
	public PageBean queryForPage(int pageSize,int page,int sid);

	
}
