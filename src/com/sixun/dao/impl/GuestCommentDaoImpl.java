package com.sixun.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sixun.dao.IGuestCommentDao;
import com.sixun.entity.GuestComment;
import com.sixun.page.PageBean;
import com.sixun.page.PageUtils;

/**
 * @author tk
 *	-- 游客留言 
--   增删改查 分页操作数据库 dao 实现类
 */

public class GuestCommentDaoImpl implements IGuestCommentDao {

	
	public boolean add(GuestComment t) {
		String sql = "INSERT INTO guestComments VALUES(?,?,?,?)";
		try {
			return runner.update(sql, null,t.getUserName(),t.getMsgDate()
					, t.getMessage()) >= 1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
		
	public boolean update(GuestComment t) {
		String sql = "UPDATE guestComments SET userName=?,msgDate=?,message=? WHERE id=?";
		try {
			return runner.update(sql, t.getUserName(), t.getMsgDate(), t.getMessage(), t.getId()) >= 1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean delete(int id) {
		String sql = "DELETE FROM guestComments WHERE id=?";
		try {
			return runner.update(sql, id) >= 1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<GuestComment> getAll() {
		String sql = "SELECT * FROM guestComments";
		try {
			return runner.query(sql, new BeanListHandler<GuestComment>(
					GuestComment.class));
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public GuestComment getById(int id) {
		String sql = "SELECT * FROM guestComments WHERE id=?";
		try {
			return runner.query(sql, new BeanHandler<GuestComment>(GuestComment.class),
					id);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<GuestComment> getByName(String name) {
		String sql = "SELECT * FROM guestComments WHERE userName LIKE ?";
			
		try {
			return runner.query(sql, new BeanListHandler<GuestComment>(
					GuestComment.class), "%" + name + "%");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/*
	 * (non-Javadoc)						分页对象                                                    查询条件						
	 * @see com.sixun.page.PageDao#getByPage(com.sixun.page.PageBean, java.lang.String)
	 */

	public List<GuestComment> getByPage(PageBean<GuestComment> pb,String parameter) {
		
		String sql = "SELECT guestComments.* FROM ";
		String condition = " guestComments WHERE message LIKE'%"+parameter+"%'";
	    return 	PageUtils.getByPages(pb, GuestComment.class, sql, condition);
	}

}
