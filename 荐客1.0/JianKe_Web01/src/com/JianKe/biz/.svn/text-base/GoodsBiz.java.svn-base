package com.JianKe.biz;

import java.util.List;

import com.JianKe.pojo.Goods;



public interface GoodsBiz {
    
	//根据   分类编号显示所有食物           ~~`根据分类的编号呀~~~~sid~~~
	//还可以根据sid  分开显示所要的信息? 说明,图片等单独列div?
	List<Goods> getGoodsList(int sid);
   
	//删除特定的没事
	void delGoods(int gid);
	
	
	//添加特定的美食呀~
	void addGoods(Goods goods );
	
	//lishulong 根据店铺的id 和是否为特色菜（istesecai字段为1是特色菜，2为普通菜）来获取该店铺下的符合的goods
	List<Goods> getGoodsListbysc(int sid,int istsc);
	
	
}
