package com.sixun.test;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.junit.Test;

import com.sixun.dao.IUserRegisterDao;
import com.sixun.dao.impl.UserRegisterDaoImpl;
import com.sixun.entity.UserRegister;
import com.sixun.page.PageBean;
import com.sixun.page.PageUtils;
import com.sixun.util.JdbcUtils;

/**
 * @author tk
 *  用户注册 测试
 */
public class UserRegisterTest {

	IUserRegisterDao dao = new UserRegisterDaoImpl();

	@Test
	public void conn() {
		QueryRunner runner = JdbcUtils.getQueryRunner();
		System.out.println(runner);

	}

	@Test
	public void add() {

		dao.add(new UserRegister("6789", "zhangsan", "zhangsan", 213245367,
				"zhangsan@qq.com"));
	}

	@Test
	public void update() {

		dao.update(new UserRegister(12, "李四", "zhang", "zhang", 213245,
				"zhangsan@qq.com"));
	}

	@Test
	public void delete() {

		dao.delete(14);
	}

	@Test
	public void getAll() {

		List<UserRegister> userList = dao.getAll();

		for (UserRegister users : userList) {
			System.out.println(users);
		}
	}
	
	
	@Test
	public void getByid(){
		
		UserRegister user =	dao.getById(10);
	System.out.println(user);
	}
	
	@Test
	public void getByName(){
		
	List<UserRegister> user=	dao.getByName("李四");
		for (UserRegister users : user) {
			System.out.println(users);
		}
	}
	
	@Test
	public void getByPage(){
		PageBean<UserRegister> pb= new PageBean<UserRegister>();
		
		String sql = "SELECT userRegisters.* FROM ";
		String condition = " userRegisters WHERE userName LIKE userName";
	 List<UserRegister> users =    PageUtils.getByPages(pb, UserRegister.class, sql, condition);
		for (UserRegister user : users) {
			System.out.println(user);
		}
	}
}
