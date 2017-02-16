package com.JianKe.biz;

import com.JianKe.pojo.HtUser;

public interface HtUserBiz {
	//管理员登录
	HtUser htLogin(String hname,String hpwd);
	void htXgpwd(HtUser htUser);
	
}
