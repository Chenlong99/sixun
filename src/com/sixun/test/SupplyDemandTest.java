package com.sixun.test;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.junit.Test;

import com.sixun.dao.ISupplyDemandDao;
import com.sixun.dao.impl.SupplyDemandDaoImpl;
import com.sixun.entity.SupplyDemand;
import com.sixun.page.PageBean;
import com.sixun.page.PageUtils;
import com.sixun.util.JdbcUtils;

public class SupplyDemandTest {

	ISupplyDemandDao dao = new SupplyDemandDaoImpl();

	@Test
	public void conn() {
		QueryRunner runner = JdbcUtils.getQueryRunner();
		System.out.println(runner);
	}

	@Test
	public void add() {

		dao.add(new SupplyDemand("max", 12345, "12343", "sadsfg", "description"));
	}

	@Test
	public void update() {
		dao.update(new SupplyDemand(1, "李四", 123445, "eMail", "supplyDemand",
				"description"));
	}

	@Test
	public void delete() {
		dao.delete(8);
	}

	@Test
	public void getAll() {
		List<SupplyDemand> supply = dao.getAll();
		for (SupplyDemand supplyDemand : supply) {
			System.out.println(supplyDemand);
		}
	}

	@Test
	public void getByid() {
		SupplyDemand supply = dao.getById(3);
		System.out.println(supply);
	}

	@Test
	public void getByName() {
		List<SupplyDemand> supply = dao.getByName("张三");
		for (SupplyDemand supplyDemand : supply) {
			System.out.println(supplyDemand);
		}

	}

	@Test
	public void getByPage() {
		PageBean<SupplyDemand> pb = new PageBean<SupplyDemand>();
		String sql = "SELECT supplyDemands.* FROM ";
		String condition = " supplyDemands WHERE userName LIKE userName";
		List<SupplyDemand> supply = PageUtils.getByPages(pb,
				SupplyDemand.class, sql, condition);
		for (SupplyDemand supplyDemand : supply) {
			System.out.println(supplyDemand);
		}
	}

}
