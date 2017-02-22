/*创建数据库*/
CREATE DATABASE sixun CHARACTER SET utf8;
/* 使用sixun数据库*/
USE sixun;

-- 用户注册信息表
CREATE TABLE userRegisters(
id INT PRIMARY KEY AUTO_INCREMENT, -- 主键id
userName VARCHAR(30) NOT NULL,  -- 用户名
userPwd VARCHAR(20),		-- 密码
userPwdAgain VARCHAR(20),       -- 再次确认密码
phone INT,			-- 联系电话
eMail VARCHAR(30)		-- 邮箱
)

-- 用户档案信息录入表
CREATE TABLE userRecords(

id INT PRIMARY KEY AUTO_INCREMENT, -- 主键id
photo VARCHAR(100),		   -- 头像图片
userName VARCHAR(30) ,             -- 用户名
realName VARCHAR(20),		   -- 真实姓名
gender CHAR(5),                    -- 性别
phone INT,		           -- 联系方式
course VARCHAR(50),		   -- 培训课程
school VARCHAR(50),		   -- 学校
profession VARCHAR(50), 	   -- 专业
education VARCHAR(100),		   -- 学历
introduction VARCHAR(200)  	   -- 自我介绍
)


--游客留言表
-- 就业指导留言信息表
CREATE TABLE guestComments(
id INT PRIMARY KEY AUTO_INCREMENT, -- 主键id
userName VARCHAR(30) NOT NULL,         -- 用户姓名
msgDate DATETIME ,                   -- 留言时间
message VARCHAR(200)            -- 留言
)


--  创业支持供应需求表
CREATE TABLE supplyDemands(
id INT PRIMARY KEY AUTO_INCREMENT, -- 主键id
userName VARCHAR(30) NOT NULL,         -- 用户姓名
phone INT,		           -- 联系电话
eMail VARCHAR(30),		   -- 邮箱
supplyDemand VARCHAR(30),          -- 供应&需求
description VARCHAR(200)           -- 供应&需求描述
)







