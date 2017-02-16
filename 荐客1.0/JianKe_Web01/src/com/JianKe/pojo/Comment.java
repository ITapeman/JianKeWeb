package com.JianKe.pojo;


//挑战菜系评论
public class Comment {
	private int coid;
	private String content;
	private String date;
	
	private Challenge challenge;
	private User user;
	
	
	
	public Comment(String content, String date, Challenge challenge, User user) {
		super();
		this.content = content;
		this.date = date;
		this.challenge = challenge;
		this.user = user;
	}

	public Comment( String content, String date, Challenge challenge) {
		super();
		
		this.content = content;
		this.date = date;
		this.challenge = challenge;
	
	}

	public Comment() {}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public int getCoid() {
		return coid;
	}

	public void setCoid(int coid) {
		this.coid = coid;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Challenge getChallenge() {
		return challenge;
	}
	public void setChallenge(Challenge challenge) {
		this.challenge = challenge;
	}

	@Override
	public String toString() {
		return "Comment [coid=" + coid + ", content=" + content + ", date=" + date + ", challenge=" + challenge
				+ ", user=" + user + "]";
	}
	
	
}
