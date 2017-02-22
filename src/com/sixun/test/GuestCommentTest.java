package com.sixun.test;

import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.junit.Test;

import com.sixun.dao.IGuestCommentDao;
import com.sixun.dao.impl.GuestCommentDaoImpl;
import com.sixun.entity.GuestComment;
import com.sixun.page.PageBean;
import com.sixun.page.PageUtils;
import com.sixun.util.JdbcUtils;

/**
 * @author tk
 *  留言测试 
 */
public class GuestCommentTest {

	IGuestCommentDao dao = new GuestCommentDaoImpl();;

	@Test
	public void conn() {
		QueryRunner runner = JdbcUtils.getQueryRunner();
		System.out.println(runner);
	}

	@Test
	public void add() {
			
		dao.add(new GuestComment("晨起",new Date(), "左总分享的内容很好，正能量"));
	}
	
	@Test
	public void update() {

		dao.update(new GuestComment(5, "李四", new Date(),
				"思迅是个好公司"));
		
	}

	@Test
	public void delete() {
		dao.delete(3);
	}

	@Test
	public void getAll() {
		List<GuestComment> messages = dao.getAll();
		for (GuestComment msg : messages) {
			System.out.println(msg);
		}
	}
	
	@Test
	public void getByid() {
		GuestComment messages = dao.getById(5);
		System.out.println(messages);
	}

	@Test
	public void getByName() {
		List<GuestComment> messages = dao.getByName("张三");
		for (GuestComment messages2 : messages) {
			System.out.println(messages2);
		}

	}
	
	@Test
	public void getByPage(){
		
		PageBean<GuestComment> pb= new PageBean<GuestComment>();
		String sql = "SELECT guestComments.* FROM ";
		String condition = " guestComments WHERE userName LIKE userName";
	    List<GuestComment> news =    PageUtils.getByPages(pb, GuestComment.class, sql, condition);
		for (GuestComment news2 : news) {
			System.out.println(news2);
		}
		
	}
}
