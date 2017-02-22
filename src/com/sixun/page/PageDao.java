package com.sixun.page;

import java.util.List;

/**
 * 分页方法
 * @author Administrator
 *
 */
public interface PageDao<T>{

	/**
	 * 传什么参数
	 *   pageNow
	 *   pageCount
	 * 返回什么值
	 *   totalRows--从数据库中查询
	 *   totalPages
	 *   List<T>
	 *   
	 *   PageBean
	 */
	public List<T> getByPage(PageBean<T> pb,String parameter);
	
}
