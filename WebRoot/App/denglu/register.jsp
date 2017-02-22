<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 声明动态获取项目路径 --%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<!-- <meta name="keywords" content="注册页面模板,网站注册页面,注册模板页面,网站模板,注册页面表单验证">
<meta name="description" content="JS代码网提供大量的注册页面模板的学习和下载">
<link rel="shortcut icon" href="resources/images/favicon.ico" /> -->
<link href="resources/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/jquery.js"></script>
<!-- <script type="text/javascript" src="resources/js/jquery.i18n.properties-1.0.9.js" ></script>
<script type="text/javascript" src="resources/js/jquery-ui-1.10.3.custom.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/md5.js"></script>-->
<script type="text/javascript" src="resources/js/page_regist.js?lang=zh"></script>
<script type="text/javascript" src="resources/js/denglu.js">
	
</script>
<!--[if IE]>
  <script src="resources/js/html5.js"></script>
<![endif]-->
<!--[if lte IE 6]>
	<script src="resources/js/DD_belatedPNG_0.0.8a-min.js" language="javascript"></script>
	<script>
	  DD_belatedPNG.fix('div,li,a,h3,span,img,.png_bg,ul,input,dd,dt');
	</script>
<![endif]-->
<style media="screen">
#typel {
	text-align: center;
}
</style>
</head>
<body class="loginbody">
	<div class="dataEye">
		<div class="loginbox registbox">
			<div class="logo-a">
				<a href="/index.jsp" title="思迅人才网"> <img
					src="resources/images/logo2016.png"> </a>
			</div>
			<div class="login-content reg-content">
				<div class="loginbox-title">
					<h3>注册</h3>
				</div>
				<form id="signupForm" action="${path}/servlet/register?method=register" method="post"
					onsubmit="return checkForm()">
					<div class="login-error"></div>
					<div class="row" id="typel">
						用户类型：<input type="radio" name="types" checked="ture" value="学生">学生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="types" value="企业">企业
					</div>
					<div class="row">
						<input type="text" value="" required="required"
							class="input-text-user noPic input-click" name="userName" id="name"
							placeholder="用户名">
					</div>
					<div class="row">
						<input type="password" value="" required="required"
							class="input-text-password noPic input-click" name="userPwd"
							id="pwd" onblur="checkPass()" placeholder="密码"> <span
							id="passId"></span>
					</div>
					<div class="row">
						<input type="password" value="" required="required"
							class="input-text-password noPic input-click"
							name="userPwdAgain" id="ensurepwd" onblur="ensurepass()"
							placeholder="确认密码"> <span id="ensure"></span>
					</div>
					<div class="row">
						<input type="text" value="" required="required"
							class="input-text-user noPic input-click" name="phone"
							id="contact" onblur="checkHoby()" placeholder="联系电话"> <span
							id="contactspan"></span>
					</div>
					<div class="row">
						<input type="email" value="" required="required"
							class="input-text-user noPic input-click" name="eMail" id="email"
							placeholder="邮箱">
						
					</div>
					<!-- <div class="row">
				<label class="field" for="tel">公司电话</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="tel" id="tel" placeholder="这里输入文字">
			</div>
			<div class="row">
				<label class="field" for="qq">QQ</label>
				<input type="text" value="" class="input-text-user noPic input-click" name="qq" id="qq" placeholder="这里输入文字">
			</div> -->
					<!-- <div class="row tips">
				<input type="checkbox" id="checkBox">
				<label>
				我已阅读并同意
				<a href="#" target="_blank">隐私政策、服务条款</a>
				</label>
			</div> -->
					<div class="row btnArea">
						<input class="login-btn" type="submit" name="" value="注册">
					</div>
				</form>
			</div>
			<div class="go-regist">
				已有帐号,请 <a href="login.jsp" class="link">登录</a>
			</div>
		</div>

		<div id="footer">
			<div class="dblock">
				<!-- <div class="inline-block"><img src="resources/images/logo-gray.png"></div> -->
				<div class="inline-block copyright">
					<p>
						<a href="#">关于我们</a> | <a href="#">微博</a> | <a href="#">隐私政策</a> |
						<a href="#">人员招聘</a>
					</p>
					<p>Copyright © 2017 思迅电子</p>
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
