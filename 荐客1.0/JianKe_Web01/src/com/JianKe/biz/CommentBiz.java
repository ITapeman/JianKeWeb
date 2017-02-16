package com.JianKe.biz;

import java.util.List;

import com.JianKe.pojo.Comment;


public interface CommentBiz {
	//得到所有回复。（用来消除首次加载找不到USER的问题）
	List<Comment> getAllComment();
	
	public List<Comment> getCommentByCid(int cid);
	
	//评论者根据cid删除自己的评价
	void delComment(int cid);
	
	//添加评价
	void addComment(Comment comment);
	
	
}
