package com.sixun.service;

import java.util.List;

import com.sixun.entity.SupplyDemand;
import com.sixun.page.PageBean;

public interface ISupplyDemandService extends BaseService{
	
	public PageBean<SupplyDemand> list(String pageNow,String supplyDemand);
	public boolean add(SupplyDemand sd);
	public boolean update(SupplyDemand sd);
	public boolean delete(String id);
	
	public  List<SupplyDemand> getAll();
	public List<SupplyDemand> getByName(String name);
	public SupplyDemand getById(String id);
}
