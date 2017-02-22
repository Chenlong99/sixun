package com.sixun.service.impl;

import java.util.List;

import com.sixun.entity.GuestComment;
import com.sixun.page.PageBean;
import com.sixun.service.IGuestCommentService;
import com.sixun.util.StringUtils;

public class GuestCommentServiceImpl implements IGuestCommentService {

	public PageBean<GuestComment> list(String pageNow, String message) {
		PageBean<GuestComment> pb = new PageBean<GuestComment>();
		if (!StringUtils.checkNull(pageNow)) {
			try {
				pb.setPageNow(Integer.parseInt(pageNow));
				pb.setCondition(message);
			} catch (NumberFormatException e) {
				throw new RuntimeException("分页查询档案信息时传入的页数为非数字");
			}
		}
		
		System.out.println("有没有在这里创建对象");
		guestCommentDao.getByPage(pb, message);
		return pb;
	}
	
	public boolean add(GuestComment gc) {
		if (gc == null) return false;
		return guestCommentDao.add(gc);
	}

	public boolean update(GuestComment msg) {
		if (msg == null) return false;
		return guestCommentDao.update(msg);
	}

	public boolean delete(String id) {
		if (StringUtils.checkNull(id)) return false;
		try {
			return guestCommentDao.delete(Integer.parseInt(id));
		} catch (NumberFormatException e) {
			throw new RuntimeException("删除留言信息时传入的id为非数字");
		}
	}

	public List<GuestComment> getAll() {
		return guestCommentDao.getAll();
	}

	public List<GuestComment> getByName(String name) {
		if (StringUtils.checkNull(name)) {
			// select * from messages
			return guestCommentDao.getAll();
		} else {
			// select * from messages where username like '%name%'
			return guestCommentDao.getByName(name);
		}
	}
	

	public GuestComment getById(String id) {
		if (StringUtils.checkNull(id))
			return null;
		try {
			return guestCommentDao.getById(Integer.parseInt(id));
		} catch (Exception e) {
			throw new RuntimeException("根据id查询档案信息时，id为非数字");
		}
	}
	
	
	
}
