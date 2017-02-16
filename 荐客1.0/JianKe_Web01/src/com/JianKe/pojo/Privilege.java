package com.JianKe.pojo;

import java.util.Date;


public class Privilege {
	
	private int pid;
	private String name;
	private String introduce;
	private Date date;
	private String images;
	private int type;
	public int isrecommend;
	private String pri_img;
	
	private Shop shop;
	

	public int getIsrecommend() {
		return isrecommend;
	}





	public void setIsrecommend(int isrecommend) {
		this.isrecommend = isrecommend;
	}





	public Privilege(){}
	




	public Privilege(int pid, String name, String introduce, Date date,
			String images, int type, int isrecommend, String pri_img, Shop shop) {
		super();
		this.pid = pid;
		this.name = name;
		this.introduce = introduce;
		this.date = date;
		this.images = images;
		this.type = type;
		this.isrecommend = isrecommend;
		this.pri_img = pri_img;
		this.shop = shop;
	}

  


	public Privilege(String name, String introduce, Date date, String images,
			int type, int isrecommend, String pri_img) {
		super();
		this.name = name;
		this.introduce = introduce;
		this.date = date;
		this.images = images;
		this.type = type;
		this.isrecommend = isrecommend;
		this.pri_img = pri_img;
	
	}





	public String getPri_img() {
		return pri_img;
	}



	public void setPri_img(String pri_img) {
		this.pri_img = pri_img;
	}



	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public Shop getShop() {
		return shop;
	}
	
	public void setShop(Shop shop) {
		this.shop = shop;
	}
	
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

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

	
	
}
