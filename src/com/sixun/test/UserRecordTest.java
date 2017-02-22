package com.sixun.test;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.junit.Test;

import com.sixun.dao.IUserRecordDao;
import com.sixun.dao.impl.UserRecordDaoImpl;
import com.sixun.entity.UserRecord;
import com.sixun.page.PageBean;
import com.sixun.page.PageUtils;
import com.sixun.util.JdbcUtils;


/**
 * @author tk
 *  档案测试 
 */
public class UserRecordTest {
	
	IUserRecordDao dao =new UserRecordDaoImpl();
	@Test
	public void conn(){
		QueryRunner runner= JdbcUtils.getQueryRunner();
		System.out.println(runner);
	}
	@Test
	public void add(){
		
		dao.add(new UserRecord("photo","1dfdsf", "12fdag34", "男",123456, "course", "school", "profession", "education", "introduce"));
	}
	
	@Test
	public void update(){
		
		dao.update(new UserRecord(10,"图片","用户名", "姓名", "女",1234, "课程", "学校", "专业", "学历", "介绍"));
		
	}
	
	@Test
	public void delete(){
		dao.delete(11);
	}
	
	@Test
	public void getAll(){
		IUserRecordDao dao =new UserRecordDaoImpl();
	List<UserRecord>	news = dao.getAll();
	for (UserRecord news2 : news) {
		System.out.println(news2);
	}
		
	}
	@Test
	public void getByid(){
		IUserRecordDao dao =new UserRecordDaoImpl();
		UserRecord news = dao.getById(4);
		System.out.println(news);
	}
	
	@Test
	public void getByName(){
		IUserRecordDao dao =new UserRecordDaoImpl();
		List<UserRecord>	news =	dao.getByName("李");
		for (UserRecord news2 : news) {
			System.out.println(news2);
		}
	}
	
	@Test
	public void getByPage(){
		PageBean<UserRecord> pb= new PageBean<UserRecord>();
				
		String sql = "SELECT userRecords.* FROM ";
		String condition = " userRecords WHERE userName LIKE userName";
	 List<UserRecord> news =    PageUtils.getByPages(pb, UserRecord.class, sql, condition);
		for (UserRecord news2 : news) {
			System.out.println(news2);
		}
	}
}
