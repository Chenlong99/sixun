package com.sixun.page;

import java.util.List;

/**
 * 可以给每一个实体类做分页
 * @param <T>
 */

public class PageBean<T>{	
	
	private int pageNow = 1;
	private int pageCount = 6;
	private int totalRows;
	private int totalPages;//totalRows   pageCount
	private List<T> datas;
	private String condition;//条件对象
	
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getTotalPages() {
		if(totalRows%pageCount==0){
			totalPages = totalRows/pageCount;
		}else {
			totalPages = totalRows/pageCount+1;
		}
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public List<T> getDatas() {
		return datas;
	}
	public void setDatas(List<T> datas) {
		this.datas = datas;
	}
	
	
}
