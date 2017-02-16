package com.JianKe.biz.impl;

import java.util.List;

import com.JianKe.biz.MenuBiz;
import com.JianKe.dao.MenuDAO;
import com.JianKe.dao.Menu_CategoryDAO;
import com.JianKe.dao.UserDAO;
import com.JianKe.hibernate.util.ListUtil;
import com.JianKe.pojo.Menu;
import com.JianKe.pojo.PageBean;

public class MenuBizImpl implements MenuBiz {

	//1.获取相关DAO
	private MenuDAO menuDAO = null;
   private Menu_CategoryDAO menu_CategoryDAO=null;

	private UserDAO userDAO = null;
	
	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	
	//3.相关方法实现
	
	//所有的菜谱list集合
	public List<Menu> getAllMenu() {
		// TODO Auto-generated method stub
		return menuDAO.getAll();
	}
	
	//收藏的菜谱set集合，需要用ListUtil
	/*public List<Menu> getCollection(int cid) {
		// TODO Auto-generated method stub
		return ListUtil.getInstance().setToList(collectionDAO.get(cid).getMenus());
	}*/
	
	//发布的菜谱，set集合
	
/*	public List<Menu> getIssue(String uid) {
		// TODO Auto-generated method stub
		return ListUtil.getInstance().setToList(userDAO.get(uid).getMenus());
	}*/
	//增加的菜谱

	public void addMenu(Menu menu) {
		// TODO Auto-generated method stub
		menuDAO.save(menu);
	}
	//删除的菜谱


	public void delMenu(int id) {
		// TODO Auto-generated method stub
		
	}


	public void updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		
	}


	public List<Menu> getIssue(int fid) {
		return ListUtil.getInstance().setToList(userDAO.get(fid).getMenus());
	}

	public Menu getMenu(int mid) {
		// TODO Auto-generated method stub
		return menuDAO.get(mid);
	}

	public List<Menu> getMenuList(int uid) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	


	
	

		
		//收藏的菜谱set集合，需要用ListUtil

		
		public List<Menu> getMenuList1(int menu_cid){
			
			return ListUtil.getInstance().setToList(menu_CategoryDAO.get(menu_cid).getMenus());
		}
		
		//发布的菜谱，set集合
		
	/*	public List<Menu> getIssue(String uid) {
			// TODO Auto-generated method stub
			return ListUtil.getInstance().setToList(userDAO.get(uid).getMenus());
		}*/
		//增加的菜谱


		

		public Menu getRecommendMenu(int mid) {
			Menu menu = menuDAO.get(mid);
			return menu;
		}

	


		public Menu getMenuByid(int mid) {
			// TODO Auto-generated method stub
			return menuDAO.get(mid);
		}

		



		


		//分页查询 所有店铺
			public PageBean queryForPage(int pageSize, int page) {
				final String hql = "from Menu menu order by menu.mid";
				int allRow = menuDAO.getAllRowCount(hql);//总记录数
				int totalPage = PageBean.countTatalPage(pageSize, allRow);//总页数
				final int offset = PageBean.countOffset(pageSize, page);//当前页开始记录
				final int length = pageSize;//每页记录数
				final int currentPage = PageBean.countCurrentPage(page);
				List list = menuDAO.queryForPage(hql, offset, length);
				
				//将分页信息保存到bean中 
				PageBean pageBean = new PageBean();
				pageBean.setPageSize(pageSize);
				pageBean.setCurrentPage(currentPage);
				pageBean.setAllRow(allRow);
				pageBean.setTotalPage(totalPage);
				pageBean.setLists(list);
				pageBean.init();
				return pageBean;
			}
			
			//分页查询 按城市搜索
			public PageBean queryForPageByCategory(int pageSize, int page , int menu_cid) {
				final String hql = "from Menu where menu_cid = '"+menu_cid+"'";
				int allRow = menuDAO.getAllRowCount(hql);//总记录数
				int totalPage = PageBean.countTatalPage(pageSize, allRow);//总页数
				final int offset = PageBean.countOffset(pageSize, page);//当前页开始记录
				final int length = pageSize;//每页记录数
				final int currentPage = PageBean.countCurrentPage(page);
				List list = menuDAO.queryForPage(hql, offset, length);
				
				//将分页信息保存到bean中 
				PageBean pageBean = new PageBean();
				pageBean.setPageSize(pageSize);
				pageBean.setCurrentPage(currentPage);
				pageBean.setAllRow(allRow);
				pageBean.setTotalPage(totalPage);
				pageBean.setLists(list);
				pageBean.init();
				return pageBean;
			}

			public List<Menu> getlistmenu(int menu_cid) {
				// TODO Auto-generated method stub
				return null;
			}

			public List<Menu> getMenuByName(String mname) {
				// TODO Auto-generated method stub
				return menuDAO.getMenuByName(mname);
			}

			public List<Menu> getCollection(int cid) {
				// TODO Auto-generated method stub
				return null;
			}

	
	
	
	
	

}



