package com.sixun.service;

import java.util.List;

import com.sixun.entity.UserRegister;
import com.sixun.page.PageBean;

public interface IUserRegisterService extends BaseService {

	public PageBean<UserRegister> list(String pageNow,String userName);
	public  List<UserRegister> getAll();
	public List<UserRegister> getByName(String name);
	public UserRegister getById(String id);
	public boolean add(UserRegister ur);
	public boolean update(UserRegister ur);
	public boolean delete(String id);
	
}
