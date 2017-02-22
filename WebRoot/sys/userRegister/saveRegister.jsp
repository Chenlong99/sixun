<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <!-- 包含公共的JSP代码片段 -->
	
<title>思讯注册用户信息平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${path }/sys/style/js/jquery.js"></script>
<script type="text/javascript" src="${path }/sys/style/js/page_common.js"></script>
<link href="${path }/sys/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${path }/sys/style/css/index_1.css" />
</head>
<body>


<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			
				
				
					<img border="0" width="13" height="13" src="${path }/sys/style/images/title_arrow.gif"/>  添加注册用户
				
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 表单内容 -->
	<form action="${path}/student/register?method=add" method="post">
		
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="${path }/sys/style/images/item_point.gif"> 添加用户信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
				<tr>
							<td width="80px">用户名</td>
							<td><input type="text" name="username" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td width="80px">密码</td>
							<td><input type="text" name="userPwd" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td width="80px">确认密码</td>
							<td><input type="text" name="userPwdAgain" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td width="80px">电话</td>
							<td><input type="text" name="phone" class="InputStyle" value=""/> *</td>
						</tr>
						<tr>
							<td width="80px">邮箱</td>
							<td><input type="text" name="email" class="InputStyle" value=""/> *</td>
					
			</thead>
			</tbody>
		</table>
		</div>
	</div>
		<div id="InputDetailBar">
				
					 <input type="submit" value="添加" class="FunctionButtonInput">
			
            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
        </div>
	</form>	
</div>
</body>
</html>
