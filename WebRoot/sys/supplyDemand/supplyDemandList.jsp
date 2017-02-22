<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>无线点餐平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${path }/sys/style/js/jquery.js"></script>
<script type="text/javascript" src="${path }/sys/style/js/page_common.js"></script>
<link href="${path }/sys/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${path }/sys/style/css/index_1.css" />
</head>
<body>
	{<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="${path }/sys/style/images/title_arrow.gif" /> 供应需求列表
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>
	<!-- 过滤条件 -->
	<div id="QueryArea">
		<form action="${pageContext.request.contextPath }/servlet/managerSupplyDemand" method="post">
			<input type="hidden" name="method" value="list">
			<input type="text" name="supplyDemand" placeholder="请输入供应或需求查询" title="请输入供应或需求查询">
			<input type="submit" value="搜索">
		</form>
	</div>

	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>姓名</td>
					<td>联系电话</td>
					<td> 邮箱</td>
					<td> 供应需求</td>
					<td>供应需求描述</td>
					<td> 操作</td>
				</tr>
			</thead>
			<!--显示数据列表 -->
			<tbody id="TableData">
				<c:choose>
		     <c:when test="${not empty requestScope.pb.datas}">
		         <c:forEach items="${requestScope.pb.datas}" var="supplyDemand" varStatus="vs">
		             <tr>
						<td>${supplyDemand.userName}</td>
						<td>${supplyDemand.phone}</td>
						<td>${supplyDemand.eMail}</td>
						<td>${supplyDemand.supplyDemand}</td>
						<td>${supplyDemand.description}</td>
						<td>
							<a href="${path }/servlet/managerSupplyDemand?method=findById&id=${type.id}" class="FunctionButton">更新</a> 
							<a href="${path }/servlet/managerSupplyDemand?method=delete&id=${type.id}" class="FunctionButton">删除</a>
						</td>
					</tr>
		         </c:forEach>
		     </c:when>
		     <c:otherwise>
		        <tr><td>不好意思，没有餐桌信息，请联系管理员或添加</td></tr>
		     </c:otherwise>
		  </c:choose>	
			</tbody>
		</table>
		<!-- 其他功能超链接 -->
		<div id="TableTail" align="center">
			<div class="FunctionButton">
				<a href="${path }/sys/type/saveType.jsp">添加</a>
				</div>
			<a href="${path }/servlet/managerSupplyDemand?method=list">首页</a> <a
				href="${path }/servlet/managerSupplyDemand?method=list&pageNow=${requestScope.pb.pageNow-1}">上一页</a>
			<a
				href="${path }/servlet/managerSupplyDemand?method=list&pageNow=${requestScope.pb.pageNow+1}">下一页</a>
			<a
				href="${path }/servlet/managerSupplyDemand?method=list&pageNow=${requestScope.pb.totalPages}">末页</a>
			总共${requestScope.pb.totalRows }条记录;每页显示${requestScope.pb.pageCount
			}条记录; 当前${requestScope.pb.pageNow }/${requestScope.pb.totalPages }页
		</div>
			</div>
		</div>
	</div>
</body>
</html>
