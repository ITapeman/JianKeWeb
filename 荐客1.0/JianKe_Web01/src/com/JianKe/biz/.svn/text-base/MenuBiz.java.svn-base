package com.JianKe.biz;

import java.util.List;

import com.JianKe.pojo.Menu;
import com.JianKe.pojo.PageBean;

public interface MenuBiz {
	//得到所有菜谱
	List<Menu> getAllMenu();
	
    
	List<Menu> getCollection(int cid);
	
	//根据用户id获得他发布的菜谱
	List<Menu> getIssue(int fid);
	
	//发布菜谱（添加）
	void addMenu(Menu menu);
	
	//根据菜谱id删除菜谱
	void delMenu(int id);
	
	//根据食材更新菜谱
	void updateMenu(Menu menu);
	
	//根据mid获取一条菜谱
	Menu getMenu(int mid);
	
	//获取菜谱列表
	List<Menu> getMenuList(int uid);
	
	//查询菜谱
	List<Menu> getMenuByName(String mname);
	
	
	//得到所有菜谱

	
    Menu getMenuByid(int mid);
    
    List<Menu> getlistmenu(int menu_cid);
	
	


	Menu getRecommendMenu(int mid);
	
	/**
	 * 分页查询
	 * @param pageSize 每页显示多少条记录
	 * @param page 当前页
	 * @return 封装了分页信息的bean。
	 */
	public PageBean queryForPage(int pageSize,int page);
	
	/**
	 * 按城市搜索并分页查询
	 * @param pageSize 每页显示多少条记录
	 * @param page 当前所在第一页
	 * @param cityId 注入sql中的城市id
	 * @return 封装了分页信息 的Bean。
	 */
	public PageBean queryForPageByCategory(int pageSize,int page,int menu_cid);
	
	
    
}
