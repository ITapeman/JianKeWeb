package com.JianKe.action;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.omg.CORBA.PRIVATE_MEMBER;

import com.JianKe.biz.PrivilegeBiz;
import com.JianKe.pojo.PageBean;
import com.JianKe.pojo.Privilege;
import com.JianKe.pojo.Shop;
import com.opensymphony.xwork2.ActionContext;

public class htPrivilege {
private PrivilegeBiz privilegeBiz=null;
public int pid;
public String name;
public String introduce;
public String images;
public Date date;
public int type;
public String pri_img;
public int isrecommend;
public Shop shop;

private PageBean pageBean;//封装了分页信息和数据内容的pagebean
private List<Privilege> listpPrivileges;//用来存储pagebean当中被封装的shop的信息
private int page = 1;//表示从网页中返回的当前页的值  默认为1 表示默认显示第一页内容 

public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


public String getIntroduce() {
	return introduce;
}


public void setIntroduce(String introduce) {
	this.introduce = introduce;
}


public String getImages() {
	return images;
}


public void setImages(String images) {
	this.images = images;
}


public Date getDate() {
	return date;
}


public void setDate(Date date) {
	this.date = date;
}


public int getType() {
	return type;
}


public void setType(int type) {
	this.type = type;
}


public String getPri_img() {
	return pri_img;
}


public void setPri_img(String pri_img) {
	this.pri_img = pri_img;
}


public int getIsrecommend() {
	return isrecommend;
}


public void setIsrecommend(int isrecommend) {
	this.isrecommend = isrecommend;
}


public int getPid() {
	return pid;
}


public void setPid(int pid) {
	this.pid = pid;
}


public PrivilegeBiz getPrivilegeBiz() {
	return privilegeBiz;
}


public void setPrivilegeBiz(PrivilegeBiz privilegeBiz) {
	this.privilegeBiz = privilegeBiz;
}


public String pall(){
	List<Privilege> pallList = privilegeBiz.getAll();
	ActionContext.getContext().getSession().put("pallList", pallList);
	System.out.println("pall");
	return "success";
	
}	
public String delpro(){
	privilegeBiz.delPrivilege(pid);
	return "delpro";
}


public String updatepro(){
	System.out.println("pid"+pid);
	System.err.println(name);
	Privilege privilege= privilegeBiz.getPrivilege(pid);
	System.out.println(privilege.getPid());
	
    //Privilege privilege1 = new Privilege(privilege1.getPid(), getName(), getIntroduce(), getDate(), privilege1.getImages(), privilege1.getType(), getIsrecommend(), privilege1.getPri_img(),new Shop(privilege1.getShop().getSid()));
    privilege.setName(name);
    privilege.setIntroduce(introduce);
    privilege.setDate(date);
    privilege.setIsrecommend(isrecommend);
    privilegeBiz.updatePrivilege(privilege);
	return "updatepro";
	
}

public String addpro(){
	
	Privilege privilege = new Privilege(name, introduce, date, images, type, isrecommend, pri_img);
	
	privilegeBiz.addPrivilege(privilege);
     return "addpro";
}
}
