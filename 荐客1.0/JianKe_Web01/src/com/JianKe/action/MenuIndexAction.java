package com.JianKe.action;

import java.util.List;

import com.JianKe.biz.MenuBiz;
import com.JianKe.biz.Menu_CategoryBiz;
import com.JianKe.pojo.Menu;
import com.JianKe.pojo.Menu_Category;
import com.JianKe.pojo.PageBean;
import com.opensymphony.xwork2.ActionContext;

public class MenuIndexAction {
	
	private int menu_cid;
	private Menu_CategoryBiz menu_CategoryBiz = null;
	private MenuBiz menuBiz = null;
	private int mhidden;
	private PageBean pageBean;//封装了分页信息和数据内容的pagebean
	private List<Menu> listmenu;//用来存储pagebean当中被封装的shop的信息
	private int page = 1;//表示从网页中返回的当前页的值  默认为1 表示默认显示第一页内容 
	
	public PageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
	public List<Menu> getListmenu() {
		return listmenu;
	}
	public void setListmenu(List<Menu> listmenu) {
		this.listmenu = listmenu;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public Menu_CategoryBiz getMenu_CategoryBiz() {
		return menu_CategoryBiz;
	}
	public void setMenu_CategoryBiz(Menu_CategoryBiz menu_CategoryBiz) {
		this.menu_CategoryBiz = menu_CategoryBiz;
	}
	public int getMenu_cid() {
		return menu_cid;
	}
	public void setMenu_cid(int menu_cid) {
		this.menu_cid = menu_cid;
	}
	public MenuBiz getMenuBiz() {
		return menuBiz;
	}
	public void setMenuBiz(MenuBiz menuBiz) {
		this.menuBiz = menuBiz;
	}
	public int getMhidden() {
		return mhidden;
	}
	public void setMhidden(int mhidden) {
		this.mhidden = mhidden;
	}


	public String initCategory() {
		
		List<Menu_Category> categories = menu_CategoryBiz.getAllMenuCategroy();
		ActionContext.getContext().getSession().put("categories", categories);	
		
		return "success";
	}
	
	public String initMenu(){
		List<Menu> menus = null;
		if(menu_cid!=0){
			 menus = menuBiz.getMenuList(menu_cid);
		}else {
			 menus = menuBiz.getAllMenu();
		}
		
		for(Menu mn: menus){
			mn.getUser().getNickname();
		}
		
		ActionContext.getContext().getSession().put("menus", menus);
		
		return "success";
	}
	
	public String showmenulist(){
		System.out.println(menu_cid+"------menu_id");
		if(menu_cid==0){
		
			this.pageBean = menuBiz.queryForPage(12, page);
			this.listmenu = this.pageBean.getLists();
		}else {
			this.pageBean = menuBiz.queryForPageByCategory(12, page,menu_cid);
			this.listmenu = this.pageBean.getLists();
		}
		
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		ActionContext.getContext().getSession().put("menus", listmenu);
		
		for(Menu ls : listmenu){
			ls.getUser().getNickname();
		}
		return "success";
		
	}

	
	public String showmenu(){
		System.out.println(menu_cid+"------menu_id");
		if(menu_cid==0){
		
			this.pageBean = menuBiz.queryForPageByCategory(12, page,1);
			this.listmenu = this.pageBean.getLists();
		}else {
			this.pageBean = menuBiz.queryForPageByCategory(12, page,menu_cid);
			this.listmenu = this.pageBean.getLists();
		}
		
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		ActionContext.getContext().getSession().put("menus", listmenu);
		
		for(Menu ls : listmenu){
			ls.getUser().getNickname();
		}
		return "success";
		
	}
	
	//后台首页推荐
	public String htgetmenus(){
		System.out.println("menuId --"+menu_cid);
		if(mhidden == 1){
			this.menu_cid = 0;
		}
		if(menu_cid !=0 ){
			ActionContext.getContext().getSession().put("menu_cid", menu_cid);
			this.pageBean = menuBiz.queryForPageByCategory(5, page, menu_cid);
			this.listmenu = this.pageBean.getLists();
			ActionContext.getContext().getSession().put("pageBean", pageBean);
			ActionContext.getContext().getSession().put("listmenus", listmenu);
			return "success";
		}else{
			this.pageBean = menuBiz.queryForPage(5, page);
			this.listmenu = this.pageBean.getLists();
			for(Menu m:listmenu){
				System.out.println("懒加载---"+m.getMenu_Category().getCname());
			}
			System.out.println("pageBean.getTotalPage()--"+pageBean.getTotalPage());
			System.out.println("pageBean.getAllRow()--"+pageBean.getAllRow());
			ActionContext.getContext().getSession().put("pageBean", pageBean);
			ActionContext.getContext().getSession().put("listmenus", listmenu);
			return "success";
		}
	}
	
}
