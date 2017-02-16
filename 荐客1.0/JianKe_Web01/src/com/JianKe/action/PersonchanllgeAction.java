package com.JianKe.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.JianKe.biz.ChallengeBiz;
import com.JianKe.biz.CommentBiz;
import com.JianKe.dao.CommentDAO;
import com.JianKe.pojo.Challenge;
import com.JianKe.pojo.Comment;
import com.JianKe.pojo.User;
import com.opensymphony.xwork2.ActionContext;

public class PersonchanllgeAction {
	private int cid;
	private int uid;
	private String content;
	private ChallengeBiz challengeBiz;
	
	private CommentBiz commentBiz;
	private CommentDAO commentDAO;
	
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public CommentDAO getCommentDAO() {
		return commentDAO;
	}
	public void setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}
	public CommentBiz getCommentBiz() {
		return commentBiz;
	}
	public void setCommentBiz(CommentBiz commentBiz) {
		this.commentBiz = commentBiz;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public ChallengeBiz getChallengeBiz() {
		return challengeBiz;
	}
	public void setChallengeBiz(ChallengeBiz challengeBiz) {
		this.challengeBiz = challengeBiz;
	}
	
	public String  perchallengeView(){
		 User user = (User)ActionContext.getContext().getSession().get("oneuser");
		 uid = user.getUid();
		
		//获取 我 的挑战菜谱
		 System.out.println("挑战的id"+uid);
		List<Challenge> challengeList = challengeBiz.getChallengeByUid(uid);
		ActionContext.getContext().getSession().put("challengeList", challengeList);
		return "success";
	}
	
	public String addch(){
		User user = null;
		//zengjia
		cid = (Integer) ActionContext.getContext().getSession().get("cid");
		Map<String, Object>session =ActionContext.getContext().getSession();	 
		Date date=new Date();	
		SimpleDateFormat myFmt2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String  datenow = myFmt2.format(date);
		user = (User)session.get("CurrentUser");
		int userid = user.getUid();
		Comment comment2 = new Comment( content, datenow, new Challenge(cid),new User(userid));
		commentBiz.addComment(comment2);
		return "success3";
	}
	
	public String changeview(){
		System.out.println("changeView中的cid  ------"+cid);
		ActionContext.getContext().getSession().put("cid", cid);
		//显示评论
		List<Comment> comments = commentBiz.getCommentByCid(cid);
		for(Comment co : comments){
			System.out.println("懒加载加测试---"+co);
		}
		if(comments == null || "".equals(comments)){
			System.out.println("comment 位空");
		}else{
			System.out.println("---"+comments);
		}
		ActionContext.getContext().getSession().put("commentList", comments);
		
		//挑战菜谱
		 Challenge challenge =challengeBiz.getChallenge(cid);
		 System.out.println(challenge);
		 ActionContext.getContext().getSession().put("challenge", challenge);
		 return "success2";
	}
	
	public String changeview1(){
		ActionContext.getContext().getSession().put("cid", cid);
		Challenge challenge =  challengeBiz.getChallengeByCid(cid);
		ActionContext.getContext().getSession().put("challenge", challenge);
		return "success";
	}
}
