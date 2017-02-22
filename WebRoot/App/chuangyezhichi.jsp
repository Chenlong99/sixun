<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 声明动态获取项目路径 --%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML>
<html>
<head>
<title>创业支持</title>
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
<style type="text/css">
	#x1{
		font-size: 30px;
		color: #ffffff;
		position: absolute;
		top: 20px;
	}
	.col-md-3{
		padding-top: 113px;
	}
</style>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    <div class="navbar-header">	       	      
	        <a class="navbar-brand" href="index.jsp"><span id="x1">思迅人才网</span></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
	        	<li><a href="index.jsp">首页</a></li>
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
          <div class="candidates-item">
          	 <h5>创业支持</h5>	
            <div class="candidate_1"> 	
			 <div class="thumb"><img src="images/pic8.jpg" class="img-responsive" alt=""/></div>
             <div class="thumb_desc">
			   <h6 class="title"><a href="#">需求</a></h6>
			   <span class="meta">张先生</span>
               <div class="candidate_but">
				<!-- <ul class="top-btns">
					<li><a href="#" class="btn_5 btn-gray fa fa-plus toggle"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-star"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-link"></a></li>
				</ul> -->
               </div>
			   <p class="sm_1">需要认识较多的成功人士，高薪职位，创业支持欢迎能提供相应资源的会员联系我</p>
			</div>
			<div class="clearfix"></div>	
		   </div>
		   <div class="candidate_1"> 	
			 <div class="thumb"><img src="images/pic7.jpg" class="img-responsive" alt=""/></div>
             <div class="thumb_desc">
			   <h6 class="title"><a href="#">供应</a></h6>
			   <span class="meta">刘先生</span>
               <div class="candidate_but">
				<!-- <ul class="top-btns">
					<li><a href="#" class="btn_5 btn-gray fa fa-plus toggle"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-star"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-link"></a></li>
				</ul> -->
               </div>
			   <p class="sm_1">我可以提供信息化管理服务，房地产全程策划，创业支持欢迎有相关的会员联系我</p>
			</div>
			<div class="clearfix"></div>	
		   </div>
		</div>
       </div>
       <div class="col-md-3">
          <table class="condidate_detail">
          	<h4>Candidate Details</h4>
			<tbody>
				<tr>
					<td>Name</td>
					<td>Lorem Ipsum</td>
				</tr>

				<tr>
					<td>Age</td>
					<td>35 Years Old</td>
				</tr>

				<tr>
					<td>Location</td>
					<td>Australia</td>
				</tr>

				<tr>
					<td>Experiance</td>
					<td>10 Years</td>
				</tr>

				<tr>
					<td>Dgree</td>
					<td>MCA</td>
				</tr>

				<tr>
					<td>Career Lavel</td>
					<td>Mid-Level</td>
				</tr>

				<tr>
					<td>Phone</td>
					<td>(800) 2547-879</td>
				</tr>

				<tr>
					<td>Fax</td>
					<td>(800) 1247-256</td>
				</tr>

				<tr>
					<td>E-mail</td>
					<td><a href="mailto:example@example.com">example@example.com</a></td>
				</tr>
					
				<tr>
					<td>Website</td>
					<td><a href="#">example.com</a></td>
				</tr>
			</tbody>
		 </table>

       </div>
       <div class="clearfix"> </div><br><br>
       <ul class="pagination jobs_pagination">
		<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
		<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
		<!-- <li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li> -->
		<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
	</ul><br><br>
	<form style="width: 80%" action="????" method="post">
			<div class="to">
             	<input type="text" class="text" placeholder="姓名"   name="userName"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '姓名';}">
             	<input type="text" class="text" placeholder="联系电话"   name="phone"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '联系电话';}">
             	<input type="text" class="text" placeholder="邮箱" name="eMail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '邮箱';}">
			 	<input type="text" class="text" placeholder="供应&需求" name="supplyDemand"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '供应&需求';}" >
			</div>
			<div class="text">
              	 <textarea placeholder="描述"   name="description" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '描述';}">描述</textarea>
            </div>
            <div class="form-submit1">
	           <input type="submit" id="submit" value="提交"><br>
	        </div>
			<div class="clearfix"></div>
          </form>
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