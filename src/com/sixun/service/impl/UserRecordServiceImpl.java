package com.sixun.service.impl;

import java.util.List;

import com.sixun.entity.UserRecord;
import com.sixun.page.PageBean;
import com.sixun.service.IUserRecordService;
import com.sixun.util.StringUtils;

public class UserRecordServiceImpl implements IUserRecordService {

	
	public PageBean<UserRecord> list(String pageNow,String userName
			) {
		PageBean<UserRecord> pb = new PageBean<UserRecord>();
		if (!StringUtils.checkNull(pageNow)) {
			try {
				pb.setPageNow(Integer.parseInt(pageNow));
			} catch (NumberFormatException e) {
				throw new RuntimeException("分页查询档案信息时传入的页数为非数字");
			}
		}
		
		System.out.println("有没有在这里创建对象"+userName+" ------------");
		userRecordDao.getByPage(pb,userName);
		return pb;
		
	}
	
	public boolean add(UserRecord ur) {
		if (ur == null) return false;
		return userRecordDao.add(ur);

	}
	
	public boolean update(UserRecord ur) {
		if (ur == null) return false;
		return userRecordDao.update(ur);
	}
	
	public boolean delete(String id) {
		if (StringUtils.checkNull(id)) return false;
		try {

			return userRecordDao.delete(Integer.parseInt(id));
		} catch (NumberFormatException e) {
			throw new RuntimeException("删除信息时传入的id为非数字");
		}
		
	}

	public List<UserRecord> getByName(String name) {
		if (StringUtils.checkNull(name)) {
			// select * from news
			return userRecordDao.getAll();
		} else {
			// select * from news where username like '%name%'
			return userRecordDao.getByName(name);
		}
	}

	public List<UserRecord> getAll() {
		 return userRecordDao.getAll();
	}

	public UserRecord getById(String id) {
		if (StringUtils.checkNull(id))
			return null;
		try {
			return userRecordDao.getById(Integer.parseInt(id));
		} catch (Exception e) {
			throw new RuntimeException("根据id查询档案信息时，id为非数字");
		}
	}


}