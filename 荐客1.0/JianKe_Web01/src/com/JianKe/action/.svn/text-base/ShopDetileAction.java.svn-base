package com.JianKe.action;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.JianKe.biz.ChallengeBiz;
import com.JianKe.biz.EvaluateBiz;
import com.JianKe.biz.GoodsBiz;
import com.JianKe.biz.ShopBiz;
import com.JianKe.pojo.Challenge;
import com.JianKe.pojo.City;
import com.JianKe.pojo.Evaluate;
import com.JianKe.pojo.Goods;
import com.JianKe.pojo.PageBean;
import com.JianKe.pojo.Shop;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class ShopDetileAction {
	private int sid;
	private ShopBiz shopBiz;
	private GoodsBiz goodsBiz;
	private ChallengeBiz challengeBiz;
	private EvaluateBiz evaluateBiz;
	
	//后台属性
	private String sname;
	private int srecommend;
	private String scity;
	private Date stime;
	private String sintroduce;
	
	private PageBean pageBean;//封装了分页信息和数据内容的pagebean
	private List<Shop> listshop;//用来存储pagebean当中被封装的shop的信息
	private int page = 1;//表示从网页中返回的当前页的值  默认为1 表示默认显示第一页内容
	
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
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

	public void setEvaluateBiz(EvaluateBiz evaluateBiz) {
		this.evaluateBiz = evaluateBiz;
	}

	public void setChallengeBiz(ChallengeBiz challengeBiz) {
		this.challengeBiz = challengeBiz;
	}

	public void setGoodsBiz(GoodsBiz goodsBiz) {
		this.goodsBiz = goodsBiz;
	}

	public void setShopBiz(ShopBiz shopBiz) {
		this.shopBiz = shopBiz;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}
	
	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public int getSrecommend() {
		return srecommend;
	}

	public void setSrecommend(int srecommend) {
		this.srecommend = srecommend;
	}

	public String getScity() {
		return scity;
	}

	public void setScity(String scity) {
		this.scity = scity;
	}

	public Date getStime() {
		return stime;
	}

	public void setStime(Date stime) {
		this.stime = stime;
	}

	public String getSintroduce() {
		return sintroduce;
	}

	public void setSintroduce(String sintroduce) {
		this.sintroduce = sintroduce;
	}
	
	public String htchangeshop(){
		HttpServletRequest request=ServletActionContext.getRequest();  
	    HttpSession session=request.getSession();  
	    Shop shop = (Shop)session.getAttribute("shop");
	    int sid = shop.getSid();
	    String address = shop.getAddress();
	    String tel = shop.getTel();
	    String businesshour = shop.getBusinesshour();
	    String image = shop.getImage();
	    int eveprice = shop.getEveprice();
	    int cid = shop.getCity().getCityid();
	     
     Shop shop2 = new Shop(sid,sname,address,tel,businesshour,sintroduce,image,eveprice,srecommend,new City(cid));
     shopBiz.upadteShop(shop2);
		
		return "success";
	}
	
	public String shopdetiles(){
		int sid = this.sid;
		if(sid==0){
			 HttpServletRequest request=ServletActionContext.getRequest();  
	         HttpSession session=request.getSession();  
	         sid = Integer.parseInt(session.getAttribute("sid").toString());
	            
		}else{
			ActionContext.getContext().getSession().put("sid", sid);
		}
		System.out.println(sid+"-------sid");
		//得到当前点击 的店铺的信息。
		Shop shop = shopBiz.getRemommendShops(sid);
		
		//得到该店铺下的食物
		List<Goods> goods = goodsBiz.getGoodsListbysc(sid, 1);
		
		/*//得到该店铺下的所有挑战者菜谱
		List<Challenge> challengesMenuList = challengeBiz.getChallengeBySid(sid);*/
		//分页显示挑战者菜谱
		this.pageBean = challengeBiz.queryForPage(4, page, sid);
		List<Challenge> challengesMenuList = this.pageBean.getChallenges();
		ActionContext.getContext().getSession().put("pageBean", pageBean);
		System.out.println(this.pageBean.getAllRow()+"--------AllRow");
		System.out.println(this.pageBean.getTotalPage()+"--------TotalPage");
		System.out.println(this.pageBean.getCurrentPage()+"--------CurrentPage");
		System.out.println(this.pageBean.getChallenges()+"--------");
		
		/*//得到该店铺下的所有评价
		List<Evaluate> evaluates = evaluateBiz.getEvaluate(sid);*/
		//分页显示该店铺下的所有评价
		this.pageBean = evaluateBiz.queryForPageByShop(4, page, sid);
		List<Evaluate> evaluates = this.pageBean.getEvaluates();
		
		ActionContext.getContext().getSession().put("pageBean2", pageBean);
		//解决懒加载。
		for(Challenge ch : challengesMenuList){
			String uname = ch.getUser().getUname();
			System.out.println("uname is " +uname);
		}
		for(Evaluate ev: evaluates){
			ev.getUser().getUname();
		}
		
		System.out.println("处理懒加载---"+shop+goods+challengesMenuList+evaluates);
		if(shop != null && goods != null && challengesMenuList != null){
			ActionContext.getContext().getSession().put("shop", shop);
			ActionContext.getContext().getSession().put("goods", goods);
			ActionContext.getContext().getSession().put("challengesMenuList", challengesMenuList);
			ActionContext.getContext().getSession().put("evaluates", evaluates);
		
			return "success";
		}else{
			return "fail";
		}
	}
	
}
