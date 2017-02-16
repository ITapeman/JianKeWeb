package com.JianKe.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.JianKe.biz.CityBiz;
import com.JianKe.biz.ShopBiz;
import com.JianKe.pojo.City;
import com.JianKe.pojo.Shop;
import com.opensymphony.xwork2.config.entities.InterceptorListHolder;

/**
 * 后台添加店铺
 * @author shulong
 *
 */
public class HtAddShopAction {
	private String pstimg;
	private String pstimgContentType ;
	private String pstimgFileName ;
	private String sname;//店铺名称
	private String maddress;//店铺地址
	private String mphone;//店铺联系电话
	private String mhours;// 店铺营业时间
	private String mmoney;//店铺人均消费
	private String mcity;//店铺所在城市
	private String mintro;//店铺介绍
	private int isrecommend;//是否设置为推荐店铺
	
	private ShopBiz shopBiz;
	private CityBiz cityBiz;
	
	
	public void setCityBiz(CityBiz cityBiz) {
		this.cityBiz = cityBiz;
	}

	public void setShopBiz(ShopBiz shopBiz) {
		this.shopBiz = shopBiz;
	}

	public String getPstimg() {
		return pstimg;
	}

	public void setPstimg(String pstimg) {
		this.pstimg = pstimg;
	}

	public String getPstimgContentType() {
		return pstimgContentType;
	}

	public void setPstimgContentType(String pstimgContentType) {
		this.pstimgContentType = pstimgContentType;
	}


	public String getPstimgFileName() {
		return pstimgFileName;
	}

	public void setPstimgFileName(String pstimgFileName) {
		this.pstimgFileName = pstimgFileName;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getMaddress() {
		return maddress;
	}

	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}

	public String getMphone() {
		return mphone;
	}


	public void setMphone(String mphone) {
		this.mphone = mphone;
	}


	public String getMhours() {
		return mhours;
	}


	public void setMhours(String mhours) {
		this.mhours = mhours;
	}

	public String getMmoney() {
		return mmoney;
	}

	public void setMmoney(String mmoney) {
		this.mmoney = mmoney;
	}

	public String getMcity() {
		return mcity;
	}


	public void setMcity(String mcity) {
		this.mcity = mcity;
	}


	public String getMintro() {
		return mintro;
	}

	public void setMintro(String mintro) {
		this.mintro = mintro;
	}


	public String htaddshop() throws Exception{
		String realPath = ServletActionContext.getServletContext().getRealPath("/");
		String chilepath =  getChildPath(realPath);//创建一个子目录
	 	String path = realPath+chilepath;
	 	String dbpath = chilepath+"/"+pstimgFileName;
	 	System.out.println("dbpath:"+dbpath);
		File storeDirtory = new File(path);
		if(!storeDirtory.exists()){
			storeDirtory.mkdirs();
		}	
		OutputStream os = new FileOutputStream(new File(path,pstimgFileName));  
		InputStream is = new FileInputStream(pstimg);  
		byte[] buf = new byte[1024];  
		int length = 0 ;  
		while(-1 != (length = is.read(buf) ) ){  
		    os.write(buf, 0, length) ;  
		}  
		    is.close();  
		    os.close();  

		int cityid = cityBiz.getCityIDByCname(mcity);
		int money = Integer.parseInt(mmoney);
		Shop shop = new Shop(sname,maddress,mphone,mhours,mintro,dbpath,money,isrecommend,new City(cityid));
		shopBiz.addShop(shop);
		 
		return "success";
	}
	
	//检索子目录是否存在，如果不存在则创建。
		private String getChildPath(String realPath) {
			Date date = new Date();
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String timenow = df.format(date);
			
			File file = new File(realPath,timenow);
			if(file.exists()){
				file.mkdirs();
			}
			return timenow;
		}
	
}
