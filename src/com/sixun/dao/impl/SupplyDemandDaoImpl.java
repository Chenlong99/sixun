package com.sixun.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sixun.dao.ISupplyDemandDao;
import com.sixun.entity.SupplyDemand;
import com.sixun.page.PageBean;
import com.sixun.page.PageUtils;

/**
 * @author tk
 * --  供应需求
 * 
 *  增删改查 分页操作数据库 dao 实现类
 */
public class SupplyDemandDaoImpl implements ISupplyDemandDao{

	public boolean add(SupplyDemand t) {
		String sql = "INSERT INTO supplyDemands VALUES(?,?,?,?,?,?)";
		try {
			return runner.update(sql, null,t.getUserName(),t.getPhone(),t.geteMail(),t.getSupplyDemand(),t.getDescription()
					) >= 1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public boolean update(SupplyDemand t) {
		String sql = "UPDATE supplyDemands SET userName=?,phone=?,eMail=?,supplyDemand=?,description=? WHERE id=?";
		try {
			return runner.update(sql,t.getUserName(),t.getPhone(),t.geteMail(),t.getSupplyDemand(),t.getDescription(), t.getId()) >= 1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean delete(int id) {
		String sql = "DELETE FROM supplyDemands WHERE id=?";
		try {
			return runner.update(sql, id) >= 1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<SupplyDemand> getAll() {
		String sql = "SELECT * FROM supplyDemands";
		try {
			return runner.query(sql, new BeanListHandler<SupplyDemand>(
					SupplyDemand.class));
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public SupplyDemand getById(int id) {
		String sql = "SELECT * FROM supplyDemands WHERE id=?";
		try {
			return runner.query(sql, new BeanHandler<SupplyDemand>(SupplyDemand.class),
					id);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<SupplyDemand> getByName(String name) {
		String sql = "SELECT * FROM supplyDemands WHERE userName LIKE ?";
		
		try {
			return runner.query(sql, new BeanListHandler<SupplyDemand>(
					SupplyDemand.class), "%" + name + "%");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/*
	 * (non-Javadoc)							分页对象     				 查询条件		
	 * @see com.sixun.page.PageDao#getByPage(com.sixun.page.PageBean, java.lang.String)
	 */
	public List<SupplyDemand> getByPage(PageBean<SupplyDemand> pb,
			String parameter) {  
		String sql = "SELECT supplyDemands.* FROM ";
		String condition = " supplyDemands WHERE supplyDemand LIKE'%"+parameter+"%'";
	    return 	PageUtils.getByPages(pb, SupplyDemand.class, sql, condition);
	}

}
