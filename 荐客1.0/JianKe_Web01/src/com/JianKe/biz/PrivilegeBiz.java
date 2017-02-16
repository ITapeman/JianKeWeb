package com.JianKe.biz;

import java.util.List;

import com.JianKe.pojo.Privilege;

public interface PrivilegeBiz {

	//获取所有优惠信息
	List<Privilege> getAll();
	
	//根据pid获取单个信息
	Privilege getPrivilege(int pid);
	
	//根据type获取特定信息的优惠
	List<Privilege> getList(int type);
	
	//根据isrecommend(首页推荐)来获取优惠信息
	List<Privilege> getListByRecommend(int rec);
	
	//添加优惠
	void addPrivilege(Privilege privilege);
	
	//删除优惠
	void delPrivilege(int pid);
	//修改优惠
	void updatePrivilege(Privilege privilege);
	
}
