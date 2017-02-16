package com.JianKe.pojo;

import java.util.Date;
import java.util.Set;

public class Challenge {
	private int cid;
	private String 	name;
	private String step1;
	private String image1;
	private String step2;
	private String image2;
	private String step3;
	private String image3;
	private String step4;
	private String image4;
	private String step5;
	private String image5;
	private String step6;
	private String image6;
	private String step7;
	private String image7;
	private String step8;
	private String image8;
	private String step9;
	private String image9;
	private String step10;
	private String image10;
	private String nickname;
	private Date date;
	
	private Shop shop;
	private User user;
	
	private Set<Comment> comments;
	

	public Set<Comment> getComments() {
		return comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

	public Challenge(String name, String step1, String image1, String step2, String image2, String step3, String image3,
			String step4, String image4, String step5, String image5, String step6, String image6, Date date, Shop shop,
			User user) {
		super();
		this.name = name;
		this.step1 = step1;
		this.image1 = image1;
		this.step2 = step2;
		this.image2 = image2;
		this.step3 = step3;
		this.image3 = image3;
		this.step4 = step4;
		this.image4 = image4;
		this.step5 = step5;
		this.image5 = image5;
		this.step6 = step6;
		this.image6 = image6;
		this.date = date;
		this.shop = shop;
		this.user = user;
	}

	public Challenge(int cid) {
		super();
		this.cid = cid;
	}

	public Challenge(){}
	
	
	
	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
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
	
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}



	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getStep1() {
		return step1;
	}

	public void setStep1(String step1) {
		this.step1 = step1;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getStep2() {
		return step2;
	}

	public void setStep2(String step2) {
		this.step2 = step2;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getStep3() {
		return step3;
	}

	public void setStep3(String step3) {
		this.step3 = step3;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public String getStep4() {
		return step4;
	}

	public void setStep4(String step4) {
		this.step4 = step4;
	}

	public String getImage4() {
		return image4;
	}

	public void setImage4(String image4) {
		this.image4 = image4;
	}

	public String getStep5() {
		return step5;
	}

	public void setStep5(String step5) {
		this.step5 = step5;
	}

	public String getImage5() {
		return image5;
	}

	public void setImage5(String image5) {
		this.image5 = image5;
	}

	public String getStep6() {
		return step6;
	}

	public void setStep6(String step6) {
		this.step6 = step6;
	}

	public String getImage6() {
		return image6;
	}

	public void setImage6(String image6) {
		this.image6 = image6;
	}

	public String getStep7() {
		return step7;
	}

	public void setStep7(String step7) {
		this.step7 = step7;
	}

	public String getImage7() {
		return image7;
	}

	public void setImage7(String image7) {
		this.image7 = image7;
	}

	public String getStep8() {
		return step8;
	}

	public void setStep8(String step8) {
		this.step8 = step8;
	}

	public String getImage8() {
		return image8;
	}

	public void setImage8(String image8) {
		this.image8 = image8;
	}

	public String getStep9() {
		return step9;
	}

	public void setStep9(String step9) {
		this.step9 = step9;
	}

	public String getImage9() {
		return image9;
	}

	public void setImage9(String image9) {
		this.image9 = image9;
	}

	public String getStep10() {
		return step10;
	}

	public void setStep10(String step10) {
		this.step10 = step10;
	}

	public String getImage10() {
		return image10;
	}

	public void setImage10(String image10) {
		this.image10 = image10;
	}

	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	


}
