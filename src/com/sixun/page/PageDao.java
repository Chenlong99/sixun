package com.sixun.page;
/**
 * ��ҳ����
 * @author Administrator
 *
 */
public interface PageDao<T>{

	/**
	 * ��ʲô����
	 *   pageNow
	 *   pageCount
	 * ����ʲôֵ
	 *   totalRows--�����ݿ��в�ѯ
	 *   totalPages
	 *   List<T>
	 *   
	 *   PageBean
	 */
	public void getByPage(PageBean<T> pb);
	
}
