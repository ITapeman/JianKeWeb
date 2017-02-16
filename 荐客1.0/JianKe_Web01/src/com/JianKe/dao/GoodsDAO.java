package com.JianKe.dao;

import java.util.List;

import com.JianKe.dao.base.BaseDAO;
import com.JianKe.pojo.Goods;

public interface GoodsDAO extends BaseDAO<Goods>{
	//根据店铺id获取该店铺下的goods
	List<Goods> getGoodsBySC(int sid,int istsc);
	
}
