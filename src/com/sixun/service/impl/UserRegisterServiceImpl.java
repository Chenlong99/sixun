package com.sixun.service.impl;

import java.util.List;

import com.sixun.entity.UserRegister;
import com.sixun.page.PageBean;
import com.sixun.service.IUserRegisterService;
import com.sixun.util.StringUtils;

public class UserRegisterServiceImpl implements IUserRegisterService{
		
	public PageBean<UserRegister> list(String pageNow, String userName) {
		PageBean<UserRegister> pb = new PageBean<UserRegister>();
		if (!StringUtils.checkNull(pageNow)) {
			try {
				pb.setPageNow(Integer.parseInt(pageNow));
			} catch (NumberFormatException e) {
				throw new RuntimeException("分页查询档案信息时传入的页数为非数字");
			}
		}
		
		System.out.println("有没有在这里创建对象"+userName+" ------------");
		userRegisterDao.getByPage(pb,userName);
		return pb;
	}
	
	public boolean add(UserRegister user) {
		if(user==null) return false;
		return userRegisterDao.add(user);
	}

	public boolean update(UserRegister user) {
		if(user==null) return false;
		return userRegisterDao.update(user);
	}
	
	public boolean delete(String id) {
		if (StringUtils.checkNull(id)) return false;
		try {
			return userRegisterDao.delete(Integer.parseInt(id));
		} catch (NumberFormatException e) {
			throw new RuntimeException("删除留言信息时传入的id为非数字");
		}
	}

	
	public List<UserRegister> getAll() {
		return userRegisterDao.getAll();
	}

	public List<UserRegister> getByName(String name) {
		if (StringUtils.checkNull(name)) {
			// select * from news
			return userRegisterDao.getAll();
		} else {
			// select * from news where username like '%name%'
			return userRegisterDao.getByName(name);
		}
	}

	public UserRegister getById(String id) {
		if (StringUtils.checkNull(id))
			return null;
		try {
			return userRegisterDao.getById(Integer.parseInt(id));
		} catch (Exception e) {
			throw new RuntimeException("根据id查询档案信息时，id为非数字");
		}
	}



}
