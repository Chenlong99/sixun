package com.sixun.entity;

import java.util.Date;

/**
 * -- 游客留言表
-- 就业指导留言信息表
CREATE TABLE guestComments(
id INT PRIMARY KEY AUTO_INCREMENT, -- 主键id
userName VARCHAR(30) NOT NULL,         -- 用户姓名
msgDate DATETIME ,                   -- 留言时间
message VARCHAR(200)            -- 留言
)
 * 就业指导 留言信息实体类
 */

public class GuestComment {
	
	private int id;
	private String userName;
	private Date  msgDate;
	private String message;
	
	public GuestComment() {
		super();
	}

	public GuestComment(String userName, Date msgDate, String message) {
		super();
		this.userName = userName;
		this.msgDate = msgDate;
		this.message = message;
	}

	public GuestComment(int id, String userName, Date msgDate, String message) {
		super();
		this.id = id;
		this.userName = userName;
		this.msgDate = msgDate;
		this.message = message;
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

	public Date getMsgDate() {
		return msgDate;
	}

	public void setMsgDate(Date msgDate) {
		this.msgDate = msgDate;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		return "GuestComments [id=" + id + ", userName=" + userName
				+ ", msgDate=" + msgDate + ", message=" + message + "]";
	}
	
	
	
}
