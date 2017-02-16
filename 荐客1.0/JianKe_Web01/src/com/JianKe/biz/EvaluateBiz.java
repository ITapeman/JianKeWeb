package com.JianKe.biz;

import java.util.List;

import com.JianKe.pojo.Evaluate;
import com.JianKe.pojo.PageBean;
import com.JianKe.pojo.User;

public interface EvaluateBiz {

	//根据sid查询所有的回复列表
	List<Evaluate> getEvaluate(int sid);
	
	//删除特定回复
	void delEvaluate(int eid);
	
	//添加回复
	void addEvaluate(Evaluate evaluate);
	
	/**
	 * 按shop搜索并分页查询
	 * @param pageSize 每页显示多少条记录
	 * @param page 当前所在第一页
	 * @param shopId 注入sql中的shop的id
	 * @return 封装了分页信息 的Bean。
	 */
	public PageBean queryForPageByShop(int pageSize,int page,int shopId);
	
}
