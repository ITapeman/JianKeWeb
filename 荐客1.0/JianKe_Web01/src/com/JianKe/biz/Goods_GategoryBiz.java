package com.JianKe.biz;

import java.util.List;

import com.JianKe.pojo.Goods_Category;

public interface Goods_GategoryBiz {
	//获取所有分类
List<Goods_Category> getgoods_cate();
   
   //删除特定分类
void delGoods_Gate(int gid);
   
   //添加特定分类
void addGoods_Gate(Goods_Category goods_Category );

  
}
