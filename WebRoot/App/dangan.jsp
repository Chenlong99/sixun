<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 声明动态获取项目路径 --%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML>
<html>
<head>
<title>档案管理</title>
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
			            <!-- <li><a href="jobs.jsp"></a></li> -->
			           <!--  <li><a href="jobs.jsp">模拟就业</a></li> -->
			           <!--  <li><a href="jobs.jsp">常见问题</a></li> -->
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
	   <div class="col-md-4">
	   	  <div class="col_3">
	   	  	<h3>企业招聘信息</h3>
	   	  	<ul class="list_1">
	   	  		<li><a href="#"> JAVA工程师（薪资3000~5000）（4人）</a></li>
	   	  		<li><a href="#">WEB工程师（薪资3000~4000）（8人）</a></li>
	   	  		<li><a href="#">网络工程师（薪资 3000~6000）（6人）</a></li>
	   	  		<!-- <li><a href="#">Australian Nursing Agency currently require experiences</a></li>		
	   	  		<li><a href="#">Russia Nursing Agency currently require experiences</a></li>
	   	  		<li><a href="#">The Scientific Publishing Services in Saudi Arbia</a></li>	
	   	  		<li><a href="#">BPO Private Limited in Canada</a></li>		
	   	  		<li><a href="#">Executive Tracks Associates in Pakistan</a></li>
	   	  		<li><a href="#">Pyramid IT Consulting Pvt. Ltd. in Pakistan</a></li> -->						
	   	  	</ul>
	   	  </div>
	   	  <div class="col_3">
	   	  	<h3>技能培训</h3>
	   	  	<ul class="list_2">
	   	  		<li><a href="peixunkecheng.jsp">Java</a></li>
	   	  		<li><a href="peixunkecheng.jsp">UID设计</a></li>
	   	  		<li><a href="peixunkecheng.jsp">嵌入式</a></li>
	   	  		<li><a href="peixunkecheng.jsp">Java大数据</a></li>
	   	  		<li><a href="peixunkecheng.jsp">网络优化</a></li>
	   	  		<li><a href="peixunkecheng.jsp">WEB前端/h5</a></li>
	   	  		<li><a href="peixunkecheng.jsp">C++</a></li>
	   	  		<li><a href="peixunkecheng.jsp">试听申请</a></li>
	   	  		<li><a href="peixunkecheng.jsp">Unity-3D</a></li>								
	   	  	</ul>
	   	  </div>
	   	  <div class="widget">
	        <h3>就业服务</h3>
    	        <ul class="list_2">
					<li><a href="jiuye.jsp">就业信息</a></li>
					<li><a href="dangan.jsppeixunkecheng.jsp">学籍档案管理</a></li>
					 <li><a href="zuozong.jsp">就业指导</a></li>
					 </ul>
    	</div>
	 </div>
	 <div class="col-md-8 single_right">
	      <div class="but_list">
	       <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
			  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">学籍档案</a></li>
			  <li role="presentation"><a href="tianxiexinxi.jsp" >档案录入</a></li>
			</ul>
		<div id="myTabContent" class="tab-content">
		  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
		    <div class="tab_grid">
			    <div class="col-sm-3 loc_1">
			    	<a href="location_single.jsp"><img src="images/1.png" style="height: 140px; width: 100%; display: block;"></a>
			    </div>
			    <div class="col-sm-9">
			       <div class="location_box1">
			    	 <h6><a href="#">邝正劼 </a><span class="m_1">&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;西安电子科技大学&nbsp;&nbsp;&nbsp;&nbsp;通信工程&nbsp;&nbsp;&nbsp;&nbsp;本科</span></h6>
			    	 <p><span class="m_2">学习情况: </span>2015年9月12日至15年10月7日，在思迅电子信息科技进行CCNA课程培训，获得CCNA资格证书</p>
			    	 <ul class="links_bottom">
		  		    	<li><a ><i class="fa fa-envelope-o icon_1"> </i><span class="icon_text">464*****4@qq.com</span></a></li>
			  			<li><a><i class="fa fa-eye icon_1"> </i><span class="icon_text">189*******7</span></a></li>
			  			<!-- <li class="last"><a href="location_single.jsp"><i class="fa fa-sort-desc icon_1"> </i><span class="icon_text">View similar Jobs</span></a></li> -->
					 </ul>
				   </div>
			    </div>
			    <div class="clearfix"> </div>
			 </div>
			 <div class="tab_grid">
			    <div class="col-sm-3 loc_1">
			    	<a href="location_single.jsp"><img src="images/1.png" style="height: 140px; width: 100%; display: block;"></a>
			    </div>
			    <div class="col-sm-9">
			       <div class="location_box1">
			    	 <h6><a href="">屈亮 </a><span class="m_1">&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;西安电子科技大学&nbsp;&nbsp;&nbsp;&nbsp;通信工程&nbsp;&nbsp;&nbsp;&nbsp;本科</span></h6>
			    	 <p><span class="m_2">学习情况 : </span>2015年9月12日至15年10月7日，在思迅电子信息科技进行CCNA课程培训，获得CCNA资格证书</p>
			    	 <ul class="links_bottom">
		  		    	<li><a><i class="fa fa-envelope-o icon_1"> </i><span class="icon_text">303*****5</span></a></li>
			  			<li><a><i class="fa fa-eye icon_1"> </i><span class="icon_text">150*******1</span></a></li>
			  			<!-- <li class="last"><a href="location_single.jsp"><i class="fa fa-sort-desc icon_1"> </i><span class="icon_text">View similar Jobs</span></a></li> -->
					 </ul>
				   </div>
			    </div>
			    <div class="clearfix"> </div>
			 </div>
			
		  </div>
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