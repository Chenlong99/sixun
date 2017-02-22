<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- 声明动态获取项目路径 --%>
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
	<script type="text/javascript">
		/* setInterval(function(){
			window.location.href = "/wirelessplatform/client.html?method=list";
		},1000 * 50); */
		
		function checkPay(how){
		    if(how){//状态0
		        return true;
		    }else{
		        alert("该订单已经结账，不可以再次结账！！");
		    	return false;
		    }
		}
		
	</script>
</head>
<body>
	<!-- 页面标题 -->
	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="${path }/sys/style/images/title_arrow.gif" /> 餐厅订单列表
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>

	<!-- 主内容区域（数据列表或表单显示） -->
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			<!-- 表头-->
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>订单编号</td>
					<td>餐桌名</td>
					<td>下单日期</td>
					<td>总金额</td>
					<td>状态</td>
					<td>操作</td>
				</tr>
			</thead>
			<!--显示数据列表 -->
			<tbody id="TableData">
				<c:choose>
		     <c:when test="${not empty requestScope.pb.datas}">
		         <c:forEach items="${requestScope.pb.datas}" var="order" varStatus="vs">
		             <tr height="60">
				 		<td>${order.id}</td>
				 		<td>${order.table_id}</td>
				 		<td>${order.orderDate }</td>
				 		<td>${order.totalPrice }</td>
				 				<td>${order.orderStatue==0?'未结账':'已结账' }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				 				</td>
				 		<td>
							<a href="${path }/servlet/order?method=detail&orderId=${order.id}" class="FunctionButton">详细</a> 
				 				<a href="${path }/servlet/order?method=pay&orderId=${order.id}&tableId=${order.table_id}" class="FunctionButton"  onclick="checkPay(${order.orderStatue==0});">结账</a>
				 		</td>
			 		</tr>
		         </c:forEach>
		     </c:when>
		     <c:otherwise>
		        <tr><td>不好意思，没有订单信息，请联系管理员或添加</td></tr>
		     </c:otherwise>
		  </c:choose>
			 		
			 	
			</tbody>
		</table>
		<!-- 其他功能超链接 -->
		<div id="TableTail" align="center">
		    <a href="${path }/servlet/order?method=list">首页</a>
			<a href="${path }/servlet/order?method=list&pageNow=${requestScope.pb.pageNow-1}">上一页</a>
			<a href="${path }/servlet/order?method=list&pageNow=${requestScope.pb.pageNow+1}">下一页</a>
			<a href="${path }/servlet/order?method=list&pageNow=${requestScope.pb.totalPages}">末页</a>
		          总共${requestScope.pb.totalRows }条记录;每页显示${requestScope.pb.pageCount }条记录;
		          当前${requestScope.pb.pageNow }/${requestScope.pb.totalPages }页
		</div>
	</div>
</body>
</html>
