package com.sixun.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sixun.dao.IUserRegisterDao;
import com.sixun.entity.UserRegister;
import com.sixun.page.PageBean;
import com.sixun.page.PageUtils;

/**
 *  用户注册信息表
 * 增删改查 分页操作数据库 dao 实现类
 * 			
 * @author 
 */

public class UserRegisterDaoImpl implements IUserRegisterDao {
	
	public boolean add(UserRegister t) {
		String sql="INSERT INTO userRegisters VALUES(?,?,?,?,?,?)";
		try {
			return runner.update(sql, null,t.getUserName(),t.getUserPwd(),t.getUserPwdAgain(),t.getPhone(),t.geteMail())>=1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean update(UserRegister t) {
		String sql = "UPDATE userRegisters SET userName=?,userPwd=?, userPwdAgain=?, phone=?,eMail=? WHERE id=?";
		try {
		return	runner.update(sql,t.getUserName(),t.getUserPwd(),t.getUserPwdAgain(),t.getPhone(),t.geteMail(),t.getId())>=1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public boolean delete(int id) {
		String sql="DELETE FROM userRegisters WHERE id=?";
		try {
		return 	runner.update(sql, id)>=1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<UserRegister> getAll() {
		String sql="SELECT * FROM userRegisters";
		try {
		return	runner.query(sql, new BeanListHandler<UserRegister>(UserRegister.class));
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}		
	
	}

	public UserRegister getById(int id) {
		String sql="SELECT * FROM userRegisters WHERE id=?";
		try {
		return	runner.query(sql, new BeanHandler<UserRegister>(UserRegister.class), id);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<UserRegister> getByName(String name) {
		String sql="SELECT * FROM userRegisters WHERE userName LIKE ?";

			try {
			return	runner.query(sql, new BeanListHandler<UserRegister>(UserRegister.class), "%"+name+"%");
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
	}
	
	/*                   
	 * (non-Javadoc)
	 * @see com.sixun.page.PageDao#getByPage(com.sixun.page.PageBean, java.lang.String)
	 */
	public List<UserRegister> getByPage(PageBean<UserRegister> pb,String parameter ) {
		
		String sql = "SELECT userRegisters.* FROM ";
		String condition = " userRegisters WHERE userName LIKE'%"+parameter+"%'";
	 return	PageUtils.getByPages(pb, UserRegister.class, sql, condition);
		
	}

	
}
