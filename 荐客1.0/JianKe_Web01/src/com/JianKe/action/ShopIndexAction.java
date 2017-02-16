package com.JianKe.action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.JianKe.biz.CityBiz;
import com.JianKe.biz.ShopBiz;
import com.JianKe.pojo.PageBean;
import com.JianKe.pojo.Shop;
import com.opensymphony.xwork2.ActionContext;

public class ShopIndexAction {
	private String shi;
	private String hidden;
	private String sid;
	
	private PageBean pageBean;//封装了分页信息和数据内容的pagebean
	private List<Shop> listshop;//用来存储pagebean当中被封装的shop的信息
	private int page = 1;//表示从网页中返回的当前页的值  默认为1 表示默认显示第一页内容 
	
	private ShopBiz shopBiz;
	private CityBiz cityBiz;

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

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public CityBiz getCityBiz() {
		return cityBiz;
	}

	public void setCityBiz(CityBiz cityBiz) {
		this.cityBiz = cityBiz;
	}

	public void setShopBiz(ShopBiz shopBiz) {
		this.shopBiz = shopBiz;
	}
	
	public void setShi(String shi) {
		this.shi = shi;
	}
	
	public String getHidden() {
		return hidden;
	}

	public void setHidden(String hidden) {
		this.hidden = hidden;
	}
	
	public String htdelshop(){
		System.err.println("sid-----------------------"+sid);
		if(!"".equals(sid) && sid != null){
			int sid1 = Integer.parseInt(sid);
			System.err.println("sid1 -- --------------"+sid1);
			shopBiz.delShop(sid1);
		}
		return "success";
	}
	
	//后台查询
	public String execute() throws UnsupportedEncodingException{
		if("1".equals(hidden)){
			ActionContext.getContext().getSession().put("currtshi", null);
		} 
		if(shi != null){
			HttpServletRequest request=ServletActionContext.getRequest();  
			String shi = new String(request.getParameter("shi").getBytes("ISO-8859-1"), "UTF-8");
			System.out.println("市区--"+shi);
			ActionContext.getContext().getSession().put("currtshi", shi);
			int cid = cityBiz.getCityIDByCname(shi);
			this.pageBean = shopBiz.queryForPageByCity(6, page, cid);
			this.listshop = this.pageBean.getList();
			ActionContext.getContext().getSession().put("pageBean", pageBean);
			ActionContext.getContext().getSession().put("shops", listshop);
			return "success";
		}else{
			
			this.pageBean = shopBiz.queryForPage(6, page);
			this.listshop = this.pageBean.getList();
			for(Shop ls:listshop){
				System.out.println(ls.getCity().getCname()+ls.getChallenges().size()+ls.getEvaluates().size()+ls.getGoods().size());
			}
			ActionContext.getContext().getSession().put("pageBean", pageBean);
			ActionContext.getContext().getSession().put("shops", listshop);
			return "success";
		}
	}
	
	//前端分页
	public String showfenye(){
		System.out.println(shi+"城市-------");
		if(shi == null){
			 HttpServletRequest request=ServletActionContext.getRequest();  
	         HttpSession session=request.getSession();  
	         shi = session.getAttribute("shi").toString();
		}
		if(shi != null){
			ActionContext.getContext().getSession().put("shi", shi);
			int cid = cityBiz.getCityIDByCname(shi);
			if(cid==-1 && !"0".equals(shi)){
				System.out.println("1-------");
				/*this.pageBean = shopBiz.queryForPage(6, page);
				this.listshop = this.pageBean.getList();
				for(Shop ls:listshop){
					System.out.println(ls.getCity().getCname()+ls.getChallenges().size()+ls.getEvaluates().size()+ls.getPrivileges().size()+ls.getGoods().size());
				}*/
				String listshop = "";
				ActionContext.getContext().getSession().put("pageBean", pageBean);
				ActionContext.getContext().getSession().put("shops", listshop);
				return "success";
			}else if("0".equals(shi)){
				System.out.println("2-------");
				this.pageBean = shopBiz.queryForPage(6, page);
				this.listshop = this.pageBean.getList();
				for(Shop ls:listshop){
					System.out.println(ls.getCity().getCname()+ls.getChallenges().size()+ls.getEvaluates().size()+ls.getGoods().size());
				}
				ActionContext.getContext().getSession().put("pageBean", pageBean);
				ActionContext.getContext().getSession().put("shops", listshop);
				return "success";
			}else{
				System.out.println("3-------");
				System.out.println("cid is :"+cid);
				this.pageBean = shopBiz.queryForPageByCity(6, page, cid);
				this.listshop = this.pageBean.getList();
				ActionContext.getContext().getSession().put("pageBean", pageBean);
				ActionContext.getContext().getSession().put("shops", listshop);
				return "success";
			}
		}else if("全部地区".equals(shi)) {
			System.out.println("4-------");
			this.pageBean = shopBiz.queryForPage(6, page);
			this.listshop = this.pageBean.getList();
			for(Shop ls:listshop){
				System.out.println(ls.getCity().getCname()+ls.getChallenges().size()+ls.getEvaluates().size()+ls.getGoods().size());
			}
			ActionContext.getContext().getSession().put("pageBean", pageBean);
			ActionContext.getContext().getSession().put("shops", listshop);
			return "success";
		}
		return "success";
	}
	
}
