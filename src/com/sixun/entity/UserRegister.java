package com.sixun.entity;

import java.io.Serializable;


/**
 * -- 用户注册信息表
CREATE TABLE userRegisters(
id INT PRIMARY KEY AUTO_INCREMENT, -- 主键id
userName VARCHAR(30) NOT NULL,  -- 用户名
userPwd VARCHAR(20),		-- 密码
userPwdAgain VARCHAR(20),       -- 再次确认密码
phone INT,			-- 联系电话
eMail VARCHAR(30)		-- 邮箱
)
 */
public class UserRegister implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//用户id
	private int id;
	// 用户名
	private String userName;
	// 密码
	private String userPwd;
	// 再次确认密码
	private String userPwdAgain;
	// 联系电话
	private int phone;
	// 邮箱
	private String eMail;

	public UserRegister() {
		super();
	}

	public UserRegister(String userName, String userPwd, String userPwdAgain,
			int phone, String eMail) {
		super();
		this.userName = userName;
		this.userPwd = userPwd;
		this.userPwdAgain = userPwdAgain;
		this.phone = phone;
		this.eMail = eMail;
	}

	public UserRegister(int id, String userName, String userPwd,
			String userPwdAgain, int phone, String eMail) {
		super();
		this.id = id;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userPwdAgain = userPwdAgain;
		this.phone = phone;
		this.eMail = eMail;
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

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserPwdAgain() {
		return userPwdAgain;
	}

	public void setUserPwdAgain(String userPwdAgain) {
		this.userPwdAgain = userPwdAgain;
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

	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", userPwd="
				+ userPwd + ", userPwdAgain=" + userPwdAgain + ", phone="
				+ phone + ", eMail=" + eMail + "]";
	}

	
	
}
