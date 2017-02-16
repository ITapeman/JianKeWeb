package com.JianKe.biz.impl;

import java.util.List;

import com.JianKe.biz.Menu_CategoryBiz;
import com.JianKe.dao.Menu_CategoryDAO;
import com.JianKe.pojo.Menu_Category;

public class Menu_CategoryBizImpl implements Menu_CategoryBiz {

	private Menu_CategoryDAO menu_CategoryDAO = null;
	
	public void setMenu_CategoryDAO(Menu_CategoryDAO menu_CategoryDAO) {
		this.menu_CategoryDAO = menu_CategoryDAO;
	}
	
	public List<Menu_Category> getAllMenuCategroy() {
		// TODO Auto-generated method stub
		return menu_CategoryDAO.getAll();
	}

	public void addMenu_Category(Menu_Category menu_Category) {
		// TODO Auto-generated method stub
		menu_CategoryDAO.save(menu_Category);
	}

	public void updateMenu_Category(Menu_Category menu_Category) {
		// TODO Auto-generated method stub
		menu_CategoryDAO.update(menu_Category);
	}

	public void delMenu_Category(int cid) {
		// TODO Auto-generated method stub
		menu_CategoryDAO.del(menu_CategoryDAO.get(cid));
	}

	
	
	
	
	

}
