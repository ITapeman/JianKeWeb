package com.JianKe.biz.impl;

import java.util.List;

import com.JianKe.biz.PrivilegeBiz;
import com.JianKe.dao.PrivilegeDAO;
import com.JianKe.pojo.Privilege;

public class PrivilegeBizImpl implements PrivilegeBiz{
	
	private PrivilegeDAO privilegeDAO=null;
	
	public void setPrivilegeDAO(PrivilegeDAO privilegeDAO) {
		this.privilegeDAO = privilegeDAO;
	}

	public List<Privilege> getAll() {
		return privilegeDAO.getAll();
	}

	public void addPrivilege(Privilege privilege) {
		privilegeDAO.save(privilege);
	}

	public void delPrivilege(int pid) {
		privilegeDAO.del(privilegeDAO.get(pid));
	}

	public PrivilegeDAO getPrivilegeDAO() {
		return privilegeDAO;
	}

	public Privilege getPrivilege(int pid) {
		return privilegeDAO.get(pid);
	}

	public List<Privilege> getList(int type) {
		return privilegeDAO.getList(type);
	}

	public void updatePrivilege(Privilege p) {
		privilegeDAO.update(p);
	}

	public List<Privilege> getListByRecommend(int rec) {
		return privilegeDAO.getIndexList(rec);
	}





	

}
