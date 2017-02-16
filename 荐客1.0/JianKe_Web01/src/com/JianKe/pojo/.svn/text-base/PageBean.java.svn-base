package com.JianKe.pojo;

import java.util.List;

//获取分页信息
public class PageBean {
	private List<Shop> list;//返回某一页的记录列表
	private List<Menu> lists;//返回某一页的记录列表
	private List<Challenge> challenges;//返回挑战者的某一页
	private List<Evaluate> evaluates;//返回评价的某一页
	private int allRow;//总记录数
	private int totalPage;//总页数
	private int currentPage;//当前页
	private int pageSize; //每页记录数
	private boolean isFirstPage;//是否为当前第一页
	private boolean isLastPage;//是否为最后一页
	private boolean hasPreviousPage;//是否有前一页
	private boolean hasNextPage;//是否有下一页
	
	/**
	 * 初始化分页信息
	 */
	public void init(){
		this.isFirstPage = isFirstPage;
		this.isLastPage = isLastPage;
		this.hasPreviousPage = hasPreviousPage;
		this.hasNextPage = hasNextPage;
	}
	
	/**
	 * 计算总页数
	 * @param pageSize 每页显示的记录数
	 * @param allRow 总记录数
	 * @return 总页数
	 */
	public static int countTatalPage(final int pageSize,final int allRow){
		int toalPage = allRow % pageSize ==0 ? allRow/pageSize : allRow/pageSize+1;
		return toalPage;
	}
	
	/**
	 * 计算当前页从哪一条记录开始
	 * @param pageSize 每页的记录数
	 * @param currentPage 当前第一页
	 * @return 当前页开始的记录号
	 */
	public static int countOffset(final int pageSize,final int currentPage){
		final int offset = pageSize*(currentPage - 1);
		return offset;
	}
	
	/**
	 *计算当前页 ，若为零或者请求的URL中没有“？page=”，则设置当前为第一页。
	 * @param page 传入的当前页的参数。
	 * @return 若传进来的参数为空，即0，则返回1.否则返回传递的参数页。
	 */
	public static int countCurrentPage(int page){
		final int curpage = (page == 0 ? 1 : page);
		return curpage;
	}
	
	
	
	public List<Menu> getLists() {
		return lists;
	}

	public void setLists(List<Menu> lists) {
		this.lists = lists;
	}

	public List<Shop> getList() {
		return list;
	}
	public void setList(List<Shop> list) {
		this.list = list;
	}
	public int getAllRow() {
		return allRow;
	}
	public void setAllRow(int allRow) {
		this.allRow = allRow;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public boolean isFirstPage() {
		return isFirstPage;
	}
	public void setFirstPage(boolean isFirstPage) {
		this.isFirstPage = isFirstPage;
	}
	public boolean isLastPage() {
		return isLastPage;
	}
	public void setLastPage(boolean isLastPage) {
		this.isLastPage = isLastPage;
	}
	public boolean isHasPreviousPage() {
		return hasPreviousPage;
	}
	public void setHasPreviousPage(boolean hasPreviousPage) {
		this.hasPreviousPage = hasPreviousPage;
	}
	public boolean isHasNextPage() {
		return hasNextPage;
	}
	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

	public List<Challenge> getChallenges() {
		return challenges;
	}

	public void setChallenges(List<Challenge> challenges) {
		this.challenges = challenges;
	}

	public List<Evaluate> getEvaluates() {
		return evaluates;
	}

	public void setEvaluates(List<Evaluate> evaluates) {
		this.evaluates = evaluates;
	}
	
	
	
}
