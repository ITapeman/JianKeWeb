package com.JianKe.biz.impl;

import java.util.List;

import com.JianKe.biz.GoodsBiz;
import com.JianKe.dao.GoodsDAO;
import com.JianKe.dao.Goods_CategoryDAO;
import com.JianKe.hibernate.util.ListUtil;
import com.JianKe.pojo.Goods;

public class GoodsBizImpl implements GoodsBiz{
 private GoodsDAO goodsDAO=null;
 private Goods_CategoryDAO goods_CategoryDAO=null;
	
   
   
   public GoodsDAO getGoodsDAO() {
	return goodsDAO;
}

public void setGoodsDAO(GoodsDAO goodsDAO) {
	this.goodsDAO = goodsDAO;
}

public Goods_CategoryDAO getGoods_CategoryDAO() {
	return goods_CategoryDAO;
}

public void setGoods_CategoryDAO(Goods_CategoryDAO goods_CategoryDAO) {
	this.goods_CategoryDAO = goods_CategoryDAO;
}

public List<Goods> getGoodsList(int sid) {
	
	 return ListUtil.getInstance().setToList(goods_CategoryDAO.get(sid).getGoods());
   }

	public void delGoods(int gid) {
		// TODO Auto-generated method stub
		goodsDAO.del(goodsDAO.get(gid));
	}

	public void addGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsDAO.save(goods);
	}
	
	//lishulong 根据店铺的id 和是否为特色菜（istesecai字段为1是特色菜，2为普通菜）来获取该店铺下的符合的goods
	public List<Goods> getGoodsListbysc(int sid, int istsc) {
		return goodsDAO.getGoodsBySC(sid, istsc);
	}

	


}
