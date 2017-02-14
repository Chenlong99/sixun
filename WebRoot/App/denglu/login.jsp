﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 声明动态获取项目路径 --%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="keywords" content="js代码网">
<meta name="description" content="js代码网">
<title>登陆</title>
<!-- <meta name="keywords" content="网站模板,登录页面模板,登陆页面模板,登录界面模板,登录页面表单验证">
<meta name="description" content="JS代码网提供大量的登录页面模板的学习和下载">
<link rel="shortcut icon" href="resources/images/favicon.ico" /> -->
<link href="resources/style/style.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="resources/js/jquery.js"></script>
<!-- <script type="text/javascript" src="resources/js/jquery.i18n.properties-1.0.9.js" ></script> -->
<!-- <script type="text/javascript" src="resources/js/jquery-ui-1.10.3.custom.js"></script> -->
<!-- <script type="text/javascript" src="resources/js/jquery.validate.js"></script> -->
<!-- <script type="text/javascript" src="resources/js/md5.js"></script> -->
<script type="text/javascript" src="resources/js/page_login.js?lang=zh"></script>
<!--[if IE]>
  <script src="resources/js/html5.js"></script>
<![endif]-->
<!--[if lte IE 6]>
	<script src="resources/js/DD_belatedPNG_0.0.8a-min.js" language="javascript"></script>
	<script>
	  DD_belatedPNG.fix('div,li,a,h3,span,img,.png_bg,ul,input,dd,dt');
	</script>
<![endif]-->
</head>
<body class="loginbody">
<div class="dataEye">
	<div class="loginbox">
		<div class="logo-a">
			<a href="/index.jsp" title="思迅人才网">
				<img src="resources/images/logo2016.png">
        </a>
		</div>
		<div class="login-content">
			<div class="loginbox-title">
				<h3>登录</h3>
			</div>
			<form id="signupForm" action="????" mothed="post">
			<div class="login-error"></div>
			<div class="row">
				<!-- <label class="field">用户名</label> -->
				<input type="text" class="input-text-user input-click" required="required" name="email" id="email" placeholder="用户名">
			</div>
			<div class="row">
				<!-- <label class="field">密码</label> -->
				<input type="password" class="input-text-password input-click" required="required" name="password" id="password" placeholder="密码">
			</div>
			<div class="row btnArea">
				<input class="login-btn" type="submit" name="" value="登陆">
			</div>
			<div class="row tips">
				<a href="#" class="link">忘记密码</a>
			</div>
			</form>
		</div>
		<div class="go-regist">
			还没有账号？请
			<a href="register.jsp">立即注册</a>
		</div>
	</div>

<div id="footer">
	<div class="dblock">
		<!-- <div class="inline-block"><img src="resources/images/logo-gray.png"></div> -->
		<div class="inline-block copyright">
			<p><a href="#">关于我们</a> | <a href="#">微博</a> | <a href="#">隐私政策</a> | <a href="#">人员招聘</a></p>
			<p> Copyright © 2017 思迅电子</p>
		</div>
	</div>
</div>
</div>
<div class="loading">
	<div class="mask">
		<div class="loading-img">
		<img src="resources/images/loading.gif" width="31" height="31">
		</div>
	</div>
</div>
</body>
</html>