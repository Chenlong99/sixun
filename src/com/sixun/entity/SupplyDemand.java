package com.sixun.entity;

/**
 * @author tk
 *--  创业支持供应需求表
CREATE TABLE supplyDemands(
id INT PRIMARY KEY AUTO_INCREMENT, -- 主键id
userName VARCHAR(30) NOT NULL,         -- 用户姓名
phone INT,		           -- 联系电话
eMail VARCHAR(30),		   -- 邮箱
supplyDemand VARCHAR(30),          -- 供应&需求
description VARCHAR(200)           -- 供应&需求描述
)
 */
public class SupplyDemand {

	
	private int id;
	private String userName;
	private int phone;
	private String eMail;
	private String supplyDemand;
	private String description;
	
	public SupplyDemand() {
		super();
	}
	
	public SupplyDemand(String userName, int phone, String eMail,
			String supplyDemand, String description) {
		super();
		this.userName = userName;
		this.phone = phone;
		this.eMail = eMail;
		this.supplyDemand = supplyDemand;
		this.description = description;
	}
	
	public SupplyDemand(int id, String userName, int phone, String eMail,
			String supplyDemand, String description) {
		super();
		this.id = id;
		this.userName = userName;
		this.phone = phone;
		this.eMail = eMail;
		this.supplyDemand = supplyDemand;
		this.description = description;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getSupplyDemand() {
		return supplyDemand;
	}
	public void setSupplyDemand(String supplyDemand) {
		this.supplyDemand = supplyDemand;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "SupplyDemand [id=" + id + ", userName=" + userName + ", phone="
				+ phone + ", eMail=" + eMail + ", supplyDemand=" + supplyDemand
				+ ", description=" + description + "]";
	}
	
}
