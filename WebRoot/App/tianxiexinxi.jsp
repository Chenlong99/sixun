<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 声明动态获取项目路径 --%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML>
<html>
<head>
<title>信息录入</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Seeking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet'
	type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link
	href='http://fonts.useso.com/css?family=Roboto:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<!--font-Awesome-->
<link href="css/font-awesome.css" rel="stylesheet">
<!--font-Awesome-->
<style media="screen">
#x1 {
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
				<a class="navbar-brand" href="index.jsp">
					<!--<img src="images/logo.png" alt=""/>-->
					<span id="x1">思迅人才网</span>
				</a>
			</div>
			<!--/.navbar-header-->
			<div class="navbar-collapse collapse"
				id="bs-example-navbar-collapse-1" style="height: 1px;">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="index.jsp">首页</a>
					</li>
					<li class="dropdown"><a href="zhaopinxinxi.jsp">招聘信息</a></li>
					<li class="dropdown"><a href="peixunkecheng.jsp">技能培训</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">就业服务<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="jiuye.jsp">就业信息</a>
							</li>
							<li><a href="zuozong.jsp">就业指导</a>
							</li>
							<!-- <li><a href="jobs.jsp">模拟就业</a></li> -->
							<li><a href="dangan.jsp">学籍档案</a>
							</li>
							<!-- <li><a href="jobs.jsp">常见问题</a></li> -->
						</ul></li>
					<li class="dropdown"><a href="chuangyezhichi.jsp"
						class="dropdown-toggle">创业支持</a></li>
					<li><a href="lianxiwomen.jsp">联系我们</a>
					</li>
					<!-- <li><a href="resume.jsp">Upload Resume</a></li> -->
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<!--/.navbar-collapse-->
	</nav>
	<div class="banner_1">
		<div class="container">
			<div id="search_wrapper1">
				<div id="search_form" class="clearfix">
					<h1>Start your job search</h1>
					<p>
						<input type="text" class="text" placeholder=" "
							value="Enter Keyword(s)" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Enter Keyword(s)';}">
						<input type="text" class="text" placeholder=" " value="Location"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Location';}">
						<label class="btn2 btn-2 btn2-1b"><input type="submit"
							value="Find Jobs">
						</label>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="single">
			<div class="form-container">
				<h2>信息录入</h2>
				<form action="${path}/servlet/userRecord?method=add" method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="photo" style="position: relative;left: 15%">头像：</label>
							<div class="col-md-9">
								<input type="file" path="photo" id="photo" name="photo" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="name" style="position: relative;left: 15%">用户名：</label>
							<div class="col-md-9">
								<input type="text" path="name" id="name" name="userName"
									class="form-control input-sm" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="name" style="position: relative;left: 15%">真实姓名：</label>
							<div class="col-md-9">
								<input type="text" path="username" id="username" name="realName"
									class="form-control input-sm" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="phone" style="position: relative;left: 15%">性别：</label>
							<div class="col-md-9">
								<input type="radio" name="gender" value="男" checked="checked" />男
								<input type="radio" name="gender" value="女">女
								</td>
							</div>
						</div>
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="phone" style="position: relative;left: 15%">联系电话：</label>
							<div class="col-md-9">
								<input type="text" path="phone" id="phone" name="phone"
									class="form-control input-sm" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="course" style="position: relative;left: 15%">培训课程：</label>
							<div class="col-md-9" class="form-control input-sm">
								<div class="radios">
									<input type="checkbox" value="Java开发工程师" name="course ">
									Java开发工程师&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
										value="CCIE" name="course ">
									CCIE&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
											value="CCNA" name="course ">
									CCNA&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
										value="CCNP" name="course ">
									CCNP&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
										value="WEB开发工程师" name="course ">
									WEB开发工程师&nbsp;&nbsp;&nbsp;&nbsp; <br /> <input type="checkbox"
										value=" C/C++" name="course ">
									C/C++&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
										value=" PHP开发" name="course ">
									PHP开发&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
										value="华为认证工程师" name="course ">
									华为认证工程师&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="dob" style="position: relative;left: 15%">学校：</label>
							<div class="col-md-9">
								<input type="text" path="dob" id="dob" name="school"
									class="form-control input-sm" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="email" style="position: relative;left: 15%">专业：</label>
							<div class="col-md-9">
								<input type="text" path="email" id="email" name="profession"
									class="form-control input-sm" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="dob" style="position: relative;left: 15%">学历：</label>
							<div class="col-md-9">
								<input type="text" path="dob" id="dob" name="education"
									class="form-control input-sm" />
							</div>
						</div>
					</div>
					<!-- <div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="activity ">活动：</label>
							<div class="col-md-9" class="form-control input-sm">
								<div class="radios">
									<input type="checkbox" value="" name="activity ">
									Female&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" value=""
										name="activity "> Female&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="checkbox" value="" name="activity ">
									Female&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" value=""
										name="activity "> Female&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="checkbox" value="" name="activity ">
									Female&nbsp;&nbsp;&nbsp;&nbsp; </label>
								</div>
							</div>
						</div>
					</div> -->
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-3 control-lable" for="subjects" style="position: relative;left: 15%">自我介绍：</label>
							<div class="col-md-9 sm_1">
								<textarea style="font-size:16px" cols="77" rows="6" value=" "
									name="introduction" onfocus="this.value='';"
									onblur="if (this.value == '') {this.value = '';}"> </textarea>

							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit" value="提交" class="btn btn-primary btn-sm">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="footer_bottom">
		<div class="container">
			<div class="col-sm-2">
				<ul class="f_list2">
					<li><a>关于我们</a>
					</li>
					<li><a href="index.jsp">公司介绍</a>
					</li>
					<li><a href="index.jsp">企业文化</a>
					</li>
					<li><a href="index.jsp">联系我们</a>
					</li>
				</ul>
			</div>
			<div class="col-sm-2">
				<ul class="f_list2">
					<li><a>新闻中心</a>
					</li>
					<li><a href="index.jsp">企业新闻</a>
					</li>
					<li><a href="index.jsp">行业资讯</a>
					</li>
					<li><a href="index.jsp">网站公告</a>
					</li>
				</ul>
			</div>
			<div class="col-sm-2">
				<ul class="f_list2">
					<li><a>课程体系</a>
					</li>
					<li><a href="index.jsp">网络工程师</a>
					</li>
					<li><a href="index.jsp">WEB工程师</a>
					</li>
					<li><a href="index.jsp">JAVA工程师</a>
					</li>
				</ul>
			</div>
			<div class="col-sm-2">
				<ul class="f_list2">
					<li><a>企业合作</a>
					</li>
					<li><a href="index.jsp"></a>
					</li>
					<li><a href="index.jsp"></a>
					</li>
					<li><a href="index.jsp"></a>
					</li>
				</ul>
			</div>
			<div class="col-sm-2">
				<ul class="f_list2">
					<li><a>人才网</a>
					</li>
					<li><a href="index.jsp"></a>
					</li>
					<li><a href="index.jsp"></a>
					</li>
					<li><a href="index.jsp"></a>
					</li>
				</ul>
			</div>
			<div class="col-sm-2">
				<ul class="f_list2">
					<li><a>联系我们</a>
					</li>
					<li><a href="index.jsp"></a>
					</li>
					<li><a href="index.jsp"></a>
					</li>
					<li><a href="index.jsp"></a>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
			<div class="copy">
				<p>西安思迅电子信息技术有限公司&nbsp;&nbsp; 版权所有&nbsp;&nbsp; 陕ICP备14003943号
					&copy; 2014-2017 Secent.Net ALL RIGHTS RESERVED</p>
			</div>
		</div>
	</div>
</body>
</html>
