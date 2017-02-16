package com.JianKe.action;

import java.util.ArrayList;
import java.util.List;

import com.JianKe.biz.CommentBiz;
import com.JianKe.biz.MenuBiz;
import com.JianKe.biz.PrivilegeBiz;
import com.JianKe.biz.ShopBiz;
import com.JianKe.pojo.Comment;
import com.JianKe.pojo.Menu;
import com.JianKe.pojo.PageBean;
import com.JianKe.pojo.Privilege;
import com.JianKe.pojo.Shop;
import com.opensymphony.xwork2.ActionContext;

public class beforeIndexAction {
	private ShopBiz shopBiz;
	private PageBean pageBean;//封装了分页信息和数据内容的pagebean
	private List<Shop> listshop;//用来存储pagebean当中被封装的shop的信息
	private int page = 1;//表示从网页中返回的当前页的值  默认为1 表示默认显示第一页内容 
	private CommentBiz commentBiz;
	private MenuBiz menuBiz;
	private PrivilegeBiz privilegeBiz;
	 
	
	public MenuBiz getMenuBiz() {
		return menuBiz;
	}

	public void setMenuBiz(MenuBiz menuBiz) {
		this.menuBiz = menuBiz;
	}


	public ShopBiz getShopBiz() {
		return shopBiz;
	}


	public PageBean getPageBean() {
		return pageBean;
	}


	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}


	public List<Shop> getListshop() {
		return listshop;
	}


	public void setListshop(List<Shop> listshop) {
		this.listshop = listshop;
	}


	public int getPage() {
		return page;
	}


	public void setPage(int page) {
		this.page = page;
	}


	public void setShopBiz(ShopBiz shopBiz) {
		this.shopBiz = shopBiz;
	}
	public CommentBiz getCommentBiz() {
		return commentBiz;
	}


	public void setCommentBiz(CommentBiz commentBiz) {
		this.commentBiz = commentBiz;
	}


	public void setPrivilegeBiz(PrivilegeBiz privilegeBiz) {
		this.privilegeBiz = privilegeBiz;
	}

	public String initMenus(){
		List<Menu> menus = new ArrayList<Menu>();
		for(int i=1 ; i<=5 ; i++){
			Menu menu = menuBiz.getRecommendMenu(i);
			menus.add(menu);
		}
		System.out.println("menus is : "+menus);
		ActionContext.getContext().getSession().put("initmenus", menus);
		
		//用来测试消除首次加载无USER的问题
		List<Comment> comments = commentBiz.getAllComment();
		for(Comment co : comments){
			System.out.println("首次加载无USER问题"+co);
		}
		
		//首页加载优惠
		List<Privilege> privilegeList = privilegeBiz.getListByRecommend(1);
		ActionContext.getContext().getSession().put("privilegeList", privilegeList);
		
		return "success";
		
		
	}


	public String initShops(){
		List<Shop> initshops = shopBiz.getshopByrecommend(1);
		System.out.println("initshops----"+initshops.size());
		ActionContext.getContext().getSession().put("initshops", initshops);
		//初始化商店为显示所有地区
		ActionContext.getContext().getSession().put("shi", "杭州");
		
		return "success";
	}
}
