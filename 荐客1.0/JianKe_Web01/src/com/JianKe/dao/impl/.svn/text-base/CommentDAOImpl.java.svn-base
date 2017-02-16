package com.JianKe.dao.impl;

import java.util.List;

import com.JianKe.dao.CommentDAO;
import com.JianKe.dao.base.BaseDAOImpl;
import com.JianKe.pojo.Comment;

public class CommentDAOImpl extends BaseDAOImpl<Comment> implements CommentDAO {

	public List<Comment> getCommentByCid(int cid) {
		   String hql="from Comment where cid=?";
		   Object[] params = {cid};
		   List<Comment> commentlist = getHibernateTemplate().find(hql,params);
		   return commentlist;
	
	}
	
	

}
