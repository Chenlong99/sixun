<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- 包含公共的JSP代码片段 -->

<title>思讯注册平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${path }/sys/style/js/jquery.js"></script>
<script type="text/javascript"
	src="${path }/sys/style/js/page_common.js"></script>
<link href="${path }/sys/style/css/common_style_blue.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${path }/sys/style/css/index_1.css" />
</head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="${path }/sys/style/images/title_arrow.gif" /> 更新注册用户信息
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>

	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<!-- 表单内容 -->
		<form action="${path}/servlet/managerUserRegister?method=update"
			method="post" enctype="multipart/form-data">
			<!-- 本段标题（分段标题） -->
			<div class="ItemBlock_Title">
				<img width="4" height="7" border="0"
					src="${path }/sys/style/images/item_point.gif"> 信息&nbsp;
			</div>
			<!-- 本段表单字段 -->
			<div class="ItemBlockBorder">
				<div class="ItemBlock">
					<div class="ItemBlock2">
						<table cellpadding="0" cellspacing="0" class="mainForm">
							<tr>
								<td></td>
								<td><input type="hidden" name="id" class="InputStyle"
									value="${user.id}" /> *</td>
							</tr>
							<tr>
								<td width="80px">用户名</td>
								<td><input type="text" name="userName" class="InputStyle"
									value="${user.userName  }" /> *</td>
							</tr>
							<tr>
								<td>密码</td>
								<td><input type="text" name="userPwd " class="InputStyle"
									value="${user.userPwd }" /> *</td>
							</tr>
							<tr>
								<td>确认密码</td>
								<td><input type="text" name="userPwdAgain "
									class="InputStyle" value="${user.userPwdAgain  }" /> *</td>
							</tr>
							<tr>
								<td>联系电话</td>
								<td><input type="text" name="phone" class="InputStyle"
									value="${user.phone }" /> *</td>
							</tr>
							<tr>
								<td>邮箱</td>
								<td><input type="text" name="eMail " class="InputStyle"
									value="${user.eMail  }" /> *</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<!-- 表单操作 -->
			<div id="InputDetailBar">

				<input type="submit" value="修改" class="FunctionButtonInput">

				<a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
			</div>
		</form>
	</div>
</body>
</html>
