package com.JianKe.biz.impl;

import java.util.List;

import com.JianKe.biz.Goods_GategoryBiz;
import com.JianKe.dao.Goods_CategoryDAO;
import com.JianKe.hibernate.util.ListUtil;
import com.JianKe.pojo.Goods_Category;

public class Goods_GategoryBizImpl implements Goods_GategoryBiz{
  private Goods_CategoryDAO goods_CategoryDAO=null;

  
public Goods_CategoryDAO getGoods_CategoryDAO() {
	return goods_CategoryDAO;
}

public void setGoods_CategoryDAO(Goods_CategoryDAO goods_CategoryDAO) {
	this.goods_CategoryDAO = goods_CategoryDAO;
}

public List<Goods_Category> getgoods_cate() {
	// TODO Auto-generated method stub
	List<Goods_Category> list = goods_CategoryDAO.getAll();
   return (List<Goods_Category>) list.get(1);
	
}

public void delGoods_Gate(int gid) {
	// TODO Auto-generated method stub
	goods_CategoryDAO.del(goods_CategoryDAO.get(gid));
}

public void addGoods_Gate(Goods_Category goods_Category) {
	// TODO Auto-generated method stub
	goods_CategoryDAO.save(goods_Category);
}


	
	

}
