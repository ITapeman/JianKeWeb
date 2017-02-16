package com.JianKe.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.JianKe.biz.MenuBiz;
import com.JianKe.pojo.Menu;
import com.JianKe.pojo.Menu_Category;
import com.JianKe.pojo.User;

public class HtUpdateMenuAction {
	
	private MenuBiz menuBiz;
	
	public void setMenuBiz(MenuBiz menuBiz) {
		this.menuBiz = menuBiz;
	}
	//后台删除数据注入
	private int mid;

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}
	//后台更新数据
	private String title;
	private int tuijian;//是否为首页推荐
	private int cid; //菜谱分类ID
	private String note;//菜单介绍
	private String food;//食材
	private String step1;
	private String step2;
	private String step3;
	private String step4;
	private String step5;
	private String step6;
	private String step7;
	private String step8;
	private String step9;
	private String step10;
	
	public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public int getTuijian() {
			return tuijian;
		}

		public void setTuijian(int tuijian) {
			this.tuijian = tuijian;
		}

		public int getCid() {
			return cid;
		}

		public void setCid(int cid) {
			this.cid = cid;
		}

		public String getNote() {
			return note;
		}

		public void setNote(String note) {
			this.note = note;
		}

		public String getFood() {
			return food;
		}

		public void setFood(String food) {
			this.food = food;
		}

		public String getStep1() {
			return step1;
		}

		public void setStep1(String step1) {
			this.step1 = step1;
		}

		public String getStep2() {
			return step2;
		}

		public void setStep2(String step2) {
			this.step2 = step2;
		}

		public String getStep3() {
			return step3;
		}

		public void setStep3(String step3) {
			this.step3 = step3;
		}

		public String getStep4() {
			return step4;
		}

		public void setStep4(String step4) {
			this.step4 = step4;
		}

		public String getStep5() {
			return step5;
		}

		public void setStep5(String step5) {
			this.step5 = step5;
		}

		public String getStep6() {
			return step6;
		}

		public void setStep6(String step6) {
			this.step6 = step6;
		}

		public String getStep7() {
			return step7;
		}

		public void setStep7(String step7) {
			this.step7 = step7;
		}

		public String getStep8() {
			return step8;
		}

		public void setStep8(String step8) {
			this.step8 = step8;
		}

		public String getStep9() {
			return step9;
		}

		public void setStep9(String step9) {
			this.step9 = step9;
		}

		public String getStep10() {
			return step10;
		}

		public void setStep10(String step10) {
			this.step10 = step10;
		}

		//后台更新menu
		public String htupdatemenu(){
			System.out.println("cid----"+cid);
			HttpServletRequest request=ServletActionContext.getRequest();  
		    HttpSession session=request.getSession();  
			Menu menu = (Menu)session.getAttribute("onemenu");
			int mid = menu.getMid();
			int uid = menu.getUser().getUid();
			String mimage1 = menu.getMimage1();
			String mimage2 = menu.getMimage2();
			String mimage3 = menu.getMimage3();
			String mimage4 = menu.getMimage4();
			String mimage5 = menu.getMimage5();
			String mimage6 = menu.getMimage6();
			String mimage7 = menu.getMimage7();
			String mimage8 = menu.getMimage8();
			String mimage9 = menu.getMimage9();
			String mimage10 = menu.getMimage10();
			
			Menu menu2 = new Menu(mid,title,note,food,step1,mimage1,step2,mimage2,step3,mimage3,step4,mimage4,step5,mimage5,step6,mimage6,step7,mimage7,step8,mimage8,step9,mimage9,step10,mimage10,new Menu_Category(cid),new User(uid),tuijian);
			menuBiz.updateMenu(menu2);
			return "success";
		}
		
		//后台删除menu
	public String htdelmenu(){
		menuBiz.delMenu(mid);
		return "success";
	}

}
