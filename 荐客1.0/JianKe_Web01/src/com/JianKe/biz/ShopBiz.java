package com.JianKe.biz;

import java.util.List;

import com.JianKe.pojo.Shop;
import com.JianKe.pojo.PageBean;
import com.opensymphony.xwork2.interceptor.I18nInterceptor;

public interface ShopBiz {
	//得到所有的店铺
	List<Shop> getAllShops();
	
	//根据城市获得该城市下的店铺
	List<Shop> getShops(int cid);
	
	//根据是否为推荐获得相应的店铺
	List<Shop> getshopByrecommend(int isrecommend);
		
	//根据店铺ID获得该店铺
	Shop getShop(int sid);
	
	Shop getRemommendShops(int sid);
	
	//以下写给后台管理人员使用
	//删除店铺
	void delShop(int sid);
	
	//添加店铺
	void addShop(Shop shop);
	
	//修改店铺
	void upadteShop(Shop shop);
	
	public PageBean queryForPage(int pageSize, int page);
	
	public PageBean queryForPageByCity(int pageSize, int page , int cityId);
}
