<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 声明动态获取项目路径 --%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- 包含公共的JSP代码片段 -->

<title>无线点餐平台</title>

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

	{
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">

				<img border="0" width="13" height="13"
					src="${path }/sys/style/images/title_arrow.gif" /> 更新档案信息

			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>
	
	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<!-- 表单内容 -->
		<form action="${path}/servlet/managerUserRecord?method=update" method="post"
			enctype="multipart/form-data">
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
									value="${userRecord.id}" /> *</td>
							</tr>
							<tr>
								<td>头像</td>
								<td><input type=file name="photo" class="InputStyle"
									value="${userRecord.photo}" /> *</td>
							</tr>
							<tr>
								<td width="80px">用户名</td>
								<td><input type="text" name="userName" class="InputStyle"
									value="${userRecord.userName }" /> *</td>
							</tr>
							<tr>
								<td>真实姓名</td>
								<td><input type="text" name="realName" class="InputStyle"
									value="${userRecord.realName}" /> *</td>
							</tr>
							<tr>
								<td>性别</td>
								<td><input type="text" name="gender" class="InputStyle"
									value="${userRecord.gender }" /> *</td>
							</tr>
							<tr>
								<td>联系方式</td>
								<td><input type="text" name="phone" class="InputStyle"
									value="${userRecord.phone }" /> *</td>
							</tr>
							<tr>
								<td>培训课程</td>
								<td><input type="text" name="course" class="InputStyle"
									value="${userRecord.course }" /> *</td>
							</tr>
							<tr>
								<td>学校</td>
								<td><input type="text" name="school" class="InputStyle"
									value="${userRecord.school }" /> *</td>
							</tr>
							<tr>
								<td>专业</td>
								<td><input type="text" name="profession" class="InputStyle"
									value="${userRecord.profession }" /> *</td>
							</tr>
							<tr>
								<td>学历</td>
								<td><input type="text" name="education" class="InputStyle"
									value="${userRecord.education }" /> *</td>
							</tr>
							<tr>
								<td>自我介绍</td>
								<td><textarea name="introduction" class="TextareaStyle">${userRecord.introduction }</textarea>
								</td>
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
