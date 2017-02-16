package com.JianKe.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.JianKe.biz.UserBiz;
import com.JianKe.pojo.User;

public class RegisterAction {
	private String pstimg;
	private String pstimgContentType ;
	private String pstimgFileName ;
	private String rname;
	private String rpass;
	private String remail;
	private String rnickname;
	
	public void setRname(String rname) {
		this.rname = rname;
	}
	public void setRpass(String rpass) {
		this.rpass = rpass;
	}
	public void setRemail(String remail) {
		this.remail = remail;
	}
	public void setRnickname(String rnickname) {
		this.rnickname = rnickname;
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

	private UserBiz userBiz;
	
	public UserBiz getUserBiz() {
		return userBiz;
	}
	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}
	public String regists() throws Exception{
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
		
		System.out.println("user :"+rname+rpass+remail+rnickname);
		
		User user = new User(rname,rpass,remail,rnickname,dbpath);
		userBiz.register(user);
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
