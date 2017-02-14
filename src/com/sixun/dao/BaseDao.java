package com.sixun.dao;

import java.util.List;

/**
 * @author tk
 *crud�������ӿ�
 */
public interface BaseDao<T> {
	
	public boolean add(T t);
	public boolean update(T t);
	public boolean delete(int id);
	
	public List<T> getAll();
	public T getById(int id);
	public List<T> getByName(String name);
}
