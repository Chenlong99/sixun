<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 声明动态获取项目路径 --%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML>
<html>
<head>
<title>招聘信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Seeking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.useso.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--font-Awesome-->
<link href="css/font-awesome.css" rel="stylesheet">
<!--font-Awesome-->
<style media="screen">
#x1{
	font-size: 30px;
	color: #ffffff;
	position: absolute;
	top: 20px;
}
</style>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    <div class="navbar-header">
	        <a class="navbar-brand" href="index.jsp"><!--<img src="images/logo.png" alt=""/>--><span id="x1">思迅人才网</span></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
						<li class="dropdown"><a href="index.jsp">首页</a></li>
		        <li class="dropdown">
		        	<a href="zhaopinxinxi.jsp">招聘信息</a>
		        </li>
		        <li class="dropdown">
		        	<a href="peixunkecheng.jsp">技能培训</a>
		        </li>
		        <li class="dropdown">
		           <a href="#" class="dropdown-toggle" data-toggle="dropdown">就业及创业<b class="caret"></b></a>
		            <ul class="dropdown-menu">
			                <li><a href="chuangyezhichi.jsp">创业支持</a></li>
			            <li><a href="zuozong.jsp">就业规划</a></li>
			            <!-- <li><a href="jobs.jsp">模拟就业</a></li> -->
			            <!-- <li><a href="jobs.jsp">常见问题</a></li> -->
		            </ul>
		        </li>
		        <li class="dropdown">
		            <a href="dangan.jsp" class="dropdown-toggle">学籍档案</a> 
		        </li>
		        <!-- <li><a href="login.jsp">Login</a></li> -->
		        <li><a href="lianxiwomen.jsp">联系我们</a></li>
	        </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
<div class="banner_1">
	<div class="container">
		<div id="search_wrapper1">
		   <div id="search_form" class="clearfix">
		    <h1>Start your job search</h1>
		    <p>
			 <input type="text" class="text" placeholder=" " value="Enter Keyword(s)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Keyword(s)';}">
			 <input type="text" class="text" placeholder=" " value="Location" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Location';}">
			 <label class="btn2 btn-2 btn2-1b"><input type="submit" value="Find Jobs"></label>
			</p>
           </div>
		</div>
   </div>
</div>
<div class="container">
    <div class="single">
	   <div class="col-md-9 single_right">
	      <div class="but_list">
	       <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
			  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">企业招聘信息</a></li>
			  <!-- <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Show Descriptions</a></li> -->
		   </ul>
		<div id="myTabContent" class="tab-content">
		  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
		    <div class="tab_grid">
			    <div class="jobs-item with-thumb">
				    <div class="thumb"><a href="jobs_single.jsp"><img src="images/a2.png" class="img-responsive" alt=""/></a></div>
				    <div class="jobs_right">
						<div class="date">17 <span>Jan</span></div>
						<div class="date_desc"><h6 class="title"><a href="http://secent.net">西安思迅</a></h6>
						  <span class="meta">西安思迅电子信息科技有限公司</span>
						</div>
						<div class="clearfix"> </div>
						<p class="description">招聘岗位：<br/>&nbsp;&nbsp;&nbsp;&nbsp;网络工程师（薪资3000 ~ 6000）（6人），要求：了解GSM，CDMA2000，WCDMA.LTE两种以上系统原理。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;JAVA工程师（薪资3000 ~ 5000）（4人），要求：了解J2EE，J2SE。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;WEB工程师（薪资3000 ~ 4000）（8人）,要求：了解HTML，CSS，JavaScript。
						<!--<a href="jobs_single.jsp" class="read-more">Read More</a>--></p>
                    </div>
					<div class="clearfix"> </div>
				</div>
			 </div>
		<hr>
		  </div> 
	  </div>
     </div>
     <ul class="pagination jobs_pagination">
		<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
		<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
		<!-- <li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li> -->
		<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
	</ul>
    </div>
   </div>
   <div class="col-md-3">
   <h5 class="widget-title">热门搜索</h5>
	   	  <div class="col_3">
	   	  	<h3>热门标签</h3>
	   	  	  <table class="table">
                    <tbody>
                        <tr class="unread checked">
                            <td class="hidden-xs">网络工程师</td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">数据中心</td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">Linux</td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">WEB前端</td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">路由&交换</td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">安全</td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">运营商</td>
                        </tr>
                        <tr class="unread checked">
                            <td class="hidden-xs">协作</td>
                        </tr>
                </tbody>
             </table>
	   	  </div>
	   	  <div class="col_3">
	   	  	<h3>热门新闻</h3>
	   	  	<table class="table">
                    <tbody>
                        <tr class="unread checked">
                        	<td class="hidden-xs">热烈庆祝内蒙古农业大学来我中心</td>
                        </tr>
                        <tr class="unread checked">
                        	<td class="hidden-xs">热烈庆祝红星美凯龙来我中心参加</td>
                        </tr>
                        <tr class="unread checked">
                        	<td class="hidden-xs">西安大学生就业创业联盟工作研讨</td>
                        </tr>
                        <tr class="unread checked">
                        	<td class="hidden-xs">思迅师资力量介绍</td>
                        </tr>
                        <tr class="unread checked">
                        	<td class="hidden-xs">西安市人力资源和社会保障局授予</td>
                        </tr>
                        <tr class="unread checked">
                        	<td class="hidden-xs">0学费入学成现实，政府补助等你</td>
                        </tr>
                    </tbody>
             </table>
	   	  </div>
	   </div>
  <div class="clearfix"> </div>
 </div>
</div>
<div class="footer_bottom">
  <div class="container">
    <div class="col-sm-2">
  		<ul class="f_list2">
			<li><a>关于我们</a></li>
			<li><a href="index.jsp">公司介绍</a></li>
			<li><a href="index.jsp">企业文化</a></li>
			<li><a href="index.jsp">联系我们</a></li>
	    </ul>
  	</div>
  	<div class="col-sm-2">
  		<ul class="f_list2">
			<li><a>新闻中心</a></li>
			<li><a href="index.jsp">企业新闻</a></li>
			<li><a href="index.jsp">行业资讯</a></li>
			<li><a href="index.jsp">网站公告</a></li>
	    </ul>
  	</div>
  	<div class="col-sm-2">
  		<ul class="f_list2">
			<li><a>课程体系</a></li>
			<li><a href="index.jsp">网络工程师</a></li>
			<li><a href="index.jsp">WEB工程师</a></li>
			<li><a href="index.jsp">JAVA工程师</a></li>
	    </ul>
  	</div>
  	<div class="col-sm-2">
       <ul class="f_list2">
			<li><a>企业合作</a></li>
			<li><a href="index.jsp"></a></li>
			<li><a href="index.jsp"></a></li>
			<li><a href="index.jsp"></a></li>
	    </ul>
  	</div>
  	<div class="col-sm-2">
       <ul class="f_list2">
			<li><a>人才网</a></li>
			<li><a href="index.jsp"></a></li>
			<li><a href="index.jsp"></a></li>
			<li><a href="index.jsp"></a></li>
	    </ul>
  	</div>
  	<div class="col-sm-2">
       <ul class="f_list2">
			<li><a>联系我们</a></li>
			<li><a href="index.jsp"></a></li>
			<li><a href="index.jsp"></a></li>
			<li><a href="index.jsp"></a></li>
	    </ul>
  	</div>
  	<div class="clearfix"> </div>
	<div class="copy">
		<p>西安思迅电子信息技术有限公司&nbsp;&nbsp; 版权所有&nbsp;&nbsp; 陕ICP备14003943号 &copy; 2014-2017 Secent.Net ALL RIGHTS RESERVED </p>
	</div>
  </div>
</div>
</body>
</html>
