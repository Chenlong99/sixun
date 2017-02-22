package com.sixun.dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;

import com.sixun.util.JdbcUtils;

/**
 * @author tk
 *crud操作根接口
 */
public interface BaseDao<T> {
	
	QueryRunner runner = JdbcUtils.getQueryRunner();
	public boolean add(T t);
	public boolean update(T t);
	public boolean delete(int id);
	
	public List<T> getAll();
	public T getById(int id);
	public List<T> getByName(String name);
}
