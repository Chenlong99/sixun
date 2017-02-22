package com.sixun.service;

import java.util.List;

import com.sixun.entity.GuestComment;
import com.sixun.page.PageBean;

public interface IGuestCommentService extends BaseService{
	
	public PageBean<GuestComment> list(String pageNow,String message);
	public boolean add(GuestComment gc);
	public boolean update(GuestComment gc);
	public boolean delete(String id);
	
	public  List<GuestComment> getAll();
	public List<GuestComment> getByName(String name);
	public GuestComment getById(String id);

	
}
