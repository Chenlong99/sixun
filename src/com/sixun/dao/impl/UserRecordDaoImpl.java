package com.sixun.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sixun.dao.IUserRecordDao;
import com.sixun.entity.UserRecord;
import com.sixun.page.PageBean;
import com.sixun.page.PageUtils;

/**
 * @author tk
 *  用户档案信息录入
 *  增删改查 分页操作数据库 dao 实现类
 */
public class UserRecordDaoImpl implements IUserRecordDao {

	
	public boolean add(UserRecord t) {
		String sql = "INSERT INTO userRecords VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			return runner.update(sql, null,t.getPhoto(), t.getUserName(),
					t.getRealName(), t.getGender(), t.getPhone(),
					t.getCourse(), t.getSchool(), t.getProfession(),
					t.getEducation(), t.getIntroduction()) >= 1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public boolean update(UserRecord t) {
		String sql = "UPDATE userRecords SET photo=?,userName=?,realName=?,gender=?,phone=?,course=?, school=?,profession=?,education=?,introduction=? WHERE id=?";
		try {
			return runner.update(sql, t.getPhoto(), t.getUserName(),
					t.getRealName(), t.getGender(), t.getPhone(),
					t.getCourse(), t.getSchool(), t.getProfession(),
					t.getEducation(), t.getIntroduction(), t.getId()) >= 1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public boolean delete(int id) {
		String sql = "DELETE FROM userRecords WHERE id=?";
		try {
			return runner.update(sql, id) >= 1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<UserRecord> getAll() {
		String sql = "SELECT * FROM userRecords";
		try {
			return runner.query(sql, new BeanListHandler<UserRecord>(UserRecord.class));
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public UserRecord getById(int id) {
		String sql = "SELECT * FROM userRecords WHERE id=?";
		try {
			return runner.query(sql, new BeanHandler<UserRecord>(UserRecord.class), id);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<UserRecord> getByName(String userName) {
		String sql = "SELECT * FROM userRecords WHERE userName LIKE ?";

		try {
			return runner.query(sql, new BeanListHandler<UserRecord>(UserRecord.class), "%"
					+ userName + "%");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/*
	 * (non-Javadoc)
	 * @see com.sixun.page.PageDao#getByPage(com.sixun.page.PageBean, java.lang.String)
	 */
	public List<UserRecord> getByPage(PageBean<UserRecord> pb ,String parameter) {
		
		String sql = "SELECT userRecords.* FROM ";
		String condition = " userRecords WHERE userName LIKE'%"+parameter+"%'";
	 return	PageUtils.getByPages(pb, UserRecord.class, sql, condition);

	}
	
}
