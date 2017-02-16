package com.JianKe.dao;

import java.util.List;

import com.JianKe.dao.base.BaseDAO;
import com.JianKe.pojo.Privilege;

public interface PrivilegeDAO extends BaseDAO<Privilege>{
	
	List<Privilege> getList(int type);
	
	//查询出首页推荐的优惠信息
	List<Privilege> getIndexList(int isrecommend);
}
