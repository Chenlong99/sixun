<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 声明动态获取项目路径 --%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML>
<html>
<head>
<title>就业指导</title>
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
				<a class="navbar-brand" href="index.jsp"> <!--<img src="images/logo.png" alt=""/>-->
					<span id="x1">思迅人才网</span> </a>
			</div>
			<!--/.navbar-header-->
			<div class="navbar-collapse collapse"
				id="bs-example-navbar-collapse-1" style="height: 1px;">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="index.jsp">首页</a></li>
					<li class="dropdown"><a href="zhaopinxinxi.jsp">招聘信息</a>
					</li>
					<li class="dropdown"><a href="peixunkecheng.jsp">技能培训</a>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">就业及创业<b class="caret"></b> </a>
						<ul class="dropdown-menu">
							<li><a href="chuangyezhichi.jsp">创业支持</a></li>
			            <li><a href="zuozong.jsp">就业规划</a></li>
							<!-- <li><a href="jobs.jsp"></a></li> -->
							<!-- <li><a href="jobs.jsp">模拟就业</a></li> -->
							<!--  <li><a href="jobs.jsp">常见问题</a></li> -->
						</ul>
					</li>
					<li class="dropdown"><a href="dangan.jsp"
						class="dropdown-toggle">学籍档案</a>
					</li>
					<!-- <li><a href="login.jsp">Login</a></li> -->
					<li><a href="lianxiwomen.jsp">联系我们</a></li>
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
							value="Find Jobs"> </label>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="single">
			<div class="col-md-9 single_right">
				<p>
					公司简介:<br>&nbsp;&nbsp;&nbsp;&nbsp;西安思迅电子信息科技有限公司为陕西省股权交易中心成长板挂牌企业，企业代码：800016.<br>
					&nbsp;&nbsp;&nbsp;&nbsp;2013年12月16日正式成立于古城西安，是一家致力于大学生技能培养、通讯工程建设与维护、智能网络控制系统的设计与安装、安全防范设备的安装与维护、软、硬件系统集成、IT外包服务的高科技企业。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;公司坚持走行业化发展道路，根据不同客户的需求，本着量身定制的服务宗旨，将大学生的见习，实习实训，工程项目，研的高科技人才。能够更好的为企业客户提供更实用、更贴切的技术服务，更大限度帮助学生及企业客户实现专业化的学习和技术支持，提升竞争力。
				</p>
				<p>
					左总介绍：<br>&nbsp;&nbsp;&nbsp;&nbsp;左茹，本科学历，陕西省民盟，1984年6月出生于陕西省西安市长安区，自幼受父亲教诲，
					做人：一定要独立，坚强、有责任心。西安思迅集团创始人，西安市大学生创业导师。从事大学生职业规划与就业指导十年，长期专注大学生思想教育工作，著有《大学生必备手册》，已印刷五万册，深受高校老师及在校学生的好评。<br>&nbsp;&nbsp;&nbsp;&nbsp;2016年创建&quot;模拟就业&quot;与&quot;模拟创业&quot;，使学生在校期间提前了解就业趋势和就业方向，具备就业能力，支持并辅导有创业梦想及创业能力的学生走向创业之路。推动大众创业，万众创新走进高校。
				</p>
				<dl class="experience">
					<div class="experience_content experience_content1">
						<div class="experience_period">
							<small>time:</small><br> <br>2017-02-06<br>

						</div>
						<div class="experience_1">
							<dt>
								<h6>
									<a href="zuozongshuo.jsp">面试前的准备</a>
								</h6>
							</dt>
							<dd>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;准备的物品有：简历，签字笔，英语四六级证书（如果有的话）复印件，身份证复印件，成绩单，在校期间获得的一些荣誉证书复印件。</p>
							</dd>
						</div>
					</div>
					<div class="experience_content">
						<div class="experience_period">
							<small>time:</small><br> <br>2017-02-07<br>
						</div>
						<div class="experience_1">
							<dt>
								<h6>
									<a href="">正确的认识自己</a>
								</h6>
							</dt>
							<dd>
								<p>《职业定位》几乎所有的应届毕业生在即将走向毕业的一年都会有很多的选择，如工作，考研，出国等，同样，对于找工作的人来说，面对很多的选择......</p>
							</dd>
						</div>
					</div>
				</dl>
				<br>
				<div class="candidates-item">
					<h5>游客留言</h5>
					<div class="candidate_1">
						<div class="thumb">
							<img src="images/pic8.jpg" class="img-responsive" alt="" />
						</div>
						<div class="thumb_desc">
							<h6 class="title">姜宇成</h6>
							<span class="meta">2017-1-30</span>
							<div class="candidate_but">
								<!-- <ul class="top-btns">
					<li><a href="#" class="btn_5 btn-gray fa fa-plus toggle"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-star"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-link"></a></li>
				</ul> -->
							</div>
							<p class="sm_1">我现在就面临着就业，不知都都要准备什么，在网上看到左总发的，觉得很实用，谢谢左总</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="candidate_1">
						<div class="thumb">
							<img src="images/pic7.jpg" class="img-responsive" alt="" />
						</div>
						<div class="thumb_desc">
							<h6 class="title">
								<a href="#">刘浩浩</a>
							</h6>
							<span class="meta">2017-2-5</span>
							<div class="candidate_but">
								<!-- <ul class="top-btns">
					<li><a href="#" class="btn_5 btn-gray fa fa-plus toggle"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-star"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-link"></a></li>
				</ul> -->
							</div>
							<p class="sm_1">以前在学校，觉得面试没什么的，就是去自我介绍之类的，看了左总的分享，才知道原来面试也有很多技巧
								和讲究，谢谢左总的分享</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="candidate_1">
						<div class="thumb">
							<img src="images/pic6.jpg" class="img-responsive" alt="" />
						</div>
						<div class="thumb_desc">
							<h6 class="title">
								<a href="#">马晓芬</a>
							</h6>
							<span class="meta">27 2017-2-5</span>
							<div class="candidate_but">
								<!-- <ul class="top-btns">
					<li><a href="#" class="btn_5 btn-gray fa fa-plus toggle"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-star"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-link"></a></li>
				</ul> -->
							</div>
							<p class="sm_1">第一次出去面试，有点紧张，想在网上找一些关于面试前的准备，偶尔看到左总发的，觉得很实用</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="candidate_2">
						<div class="thumb">
							<img src="images/pic5.jpg" class="img-responsive" alt="" />
						</div>
						<div class="thumb_desc">
							<h6 class="title">
								<a href="#">李欢欢</a>
							</h6>
							<span class="meta">2017-2-6</span>
							<div class="candidate_but">
								<!-- <ul class="top-btns">
					<li><a href="#" class="btn_5 btn-gray fa fa-plus toggle"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-star"></a></li>
					<li><a href="#" class="btn_5 btn-gray fa fa-link"></a></li>
				</ul> -->
							</div>
							<p class="sm_1">我已经毕业两个月了，每天都在胡乱的找工作，对自己也没有一个定位，看了左总分享的，正确的认识到了自己，也知道自己适合哪方面的工作了</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<br>
					<form action="${path}/servlet/message?method=add" method="post">
						<div class="to">
							<input type="datetime" class="text"
								value="<%=new SimpleDateFormat("yyyy-MM-dd").format(Calendar
					.getInstance().getTime())%>"
								readonly="true" name="msgDate" placeholder="留言时间"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = '留言时间';}">
						</div>
						<div class="to">
							<input type="text" class="text" name="userName" placeholder="姓名"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = '姓名';}">
						</div>
						<div class="text">
							<textarea placeholder="留言" name="message"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = '留言';}">留言</textarea>
						</div>
						<div class="form-submit1">
							<input name="submit" type="submit" id="submit" value="提交"><br>
						</div>
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
			       <div class="col-md-3">
       		<h3>就业明星</h3>
	   	  <!-- <img src="images/f12.jpg" class="img-responsive" alt=""/><br><br> -->
	   	  <div class="follow_jobs">
			    <a>
					<img src="images/f1.jpg" alt="" class="img-circle img-responsive">
					<div class="title">
						<h5>CCNP&nbsp;&nbsp;&nbsp;&nbsp;周松泉</h5>
						<p>学员周松泉，毕业于西安邮电大学，通过我中心CCNP课程的努力学习，成功就职于武汉烽火科技，年薪8万.</p>
					</div>
					<!-- <div class="data">
						<span class="city"><i class="fa fa-map-marker"></i>New York City</span>
						<span class="type full-time"><i class="fa fa-clock-o"></i>Full Time</span>
						<span class="sallary"><i class="fa fa-dollar"></i>45,000</span>
					</div> -->
				</a>
				<a >
					<div class="featured"></div>
					<img src="images/f2.jpg" alt="" class="img-circle">
					<div class="title">
						<h5>CCIE&nbsp;&nbsp;&nbsp;&nbsp;雷田媛</h5>
						<p>学员雷田媛，毕业于西安邮电大学，通过我中心CCIE课程的努力学习，成功就职于华为科技有限公司，年薪15万.</p>
					</div>
					
				</a>
				<a>
					<img src="images/f3.jpg" alt="" class="img-circle">
					<div class="title">
						<h5>CCIE&nbsp;&nbsp;&nbsp;&nbsp;戴凯莉</h5>
						<p>学员戴凯莉，在我中心学习CCIE课程，成功就职于海康威视，月薪 9000元。</p>
					</div>
					
				</a>
				<a >
					<img src="images/f4.jpg" alt="" class="img-circle">
					<div class="title">
						<h5>CCIE&nbsp;&nbsp;&nbsp;&nbsp;陈尔文</h5>
						<p>学员陈尔文，在我中心参加CCIE学习，成功就职于上海合达，年薪10万。</p>
					</div>
					<!-- <div class="data">
						<span class="city"><i class="fa fa-map-marker"></i>Boston</span>
						<span class="type full-time"><i class="fa fa-clock-o"></i>Full Time</span>
						<span class="sallary"><i class="fa fa-dollar"></i>55,000</span>
					</div> -->
				</a>
				<a>
					<div class="featured"></div>
					<img src="images/f1.jpg" alt="" class="img-circle">
					<div class="title">
						<h5>CCNP&nbsp;&nbsp;&nbsp;&nbsp;侯群群</h5>
						<p>学员侯群群，通过在我中心参加CCNP学习，成功就职于绿盟科技，月薪6500元。</p>
					</div>
					
				</a>
				<a class="hidden-job">
					<img src="images/f2.jpg" alt="" class="img-circle">
					<div class="title">
						<h5>CCIE&nbsp;&nbsp;&nbsp;&nbsp;沈鑫</h5>
						<p>学员沈鑫，通过在我中心参加CCIE学习，成功就业与志成电子，月薪7000元。</p>
					</div>
					
				</a>
				<a class="hidden-job">
					<img src="images/f3.jpg" alt="" class="img-circle">
					<div class="title">
						<h5>CCNP&nbsp;&nbsp;&nbsp;&nbsp;刘涛</h5>
						<p>学员刘涛，通过在我企业学习CCNP，成功就职于中兴电子，月薪9000元。</p>
					</div>
					
				</a>
				
				<ul class="pagination">
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
			<div class="clearfix"></div>
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
			<div class="clearfix"></div>
			<div class="copy">
				<p>西安思迅电子信息技术有限公司&nbsp;&nbsp; 版权所有&nbsp;&nbsp; 陕ICP备14003943号
					&copy; 2014-2017 Secent.Net ALL RIGHTS RESERVED</p>
			</div>
		</div>
	</div>
</body>
</html>
