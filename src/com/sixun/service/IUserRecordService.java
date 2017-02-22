package com.sixun.service;

import java.util.List;

import com.sixun.entity.UserRecord;
import com.sixun.page.PageBean;

public interface IUserRecordService extends BaseService{
	
	public PageBean<UserRecord> list(String pageNow,String userName);
	public boolean add(UserRecord ur);
	public boolean update(UserRecord ur);
	public boolean delete(String id);
	
	public  List<UserRecord> getAll();
	public List<UserRecord> getByName(String name);
	public UserRecord getById(String id);
	
	}
