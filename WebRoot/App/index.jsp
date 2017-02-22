  <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 声明动态获取项目路径 --%>
<c:set value="${pageContext.request.contextPath }" var="path"></c:set>
<!DOCTYPE HTML>
<html>
<head>
<title>思迅人才网</title>
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
<link href="${path}/App/css/style.css" rel='stylesheet' type='text/css' />
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
	#log>a{
		color: #ffffff;
	}
	#log>a:hover{
		color: #333;
	}
	#log{
		font-size: 13px;
		position: absolute;
		right: 20px;
		top:27px;
	}
	/*.col-sm-4 {
		width: 300px;
	}*/
	/*.col-sm-8 {
		position: ;
		left: 300px;
		top:400px;
	}*/
</style>
</head>
<body>
<!-- <div class="adcenter"><script src="http://www.cssmoban.com/include/new/ggad2_728x90.js"></script></div> -->
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
	    
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
				<a class="navbar-brand" href="index.jsp" ><!--<img src="images/logo.png" alt=""/>--><span id="x1">思迅人才网</span></a>
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
			<div id="log">
				<a href="denglu/login.jsp">登陆</a>&nbsp;&nbsp;<a href="denglu/register.jsp">注册</a>
			</div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
<div class="banner">
	<div class="container">
		<div id="search_wrapper">
		 <div id="search_form" class="clearfix">
		 <h1>Start your job search</h1>
		    <p>
			 <input type="text" class="text" placeholder=" " value="Enter Keyword(s)" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Enter Keyword(s)';}">
			 <input type="text" class="text" placeholder=" " value="Location" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Location';}">
			 <label class="btn2 btn-2 btn2-1b"><input type="submit" value="Find Jobs"></label>
			</p>
            <h2 class="title">热门标签</h2>
         </div>
		 <div id="city_1" class="clearfix">
			 <ul class="orange">
				 <li><a href="#" title="Java">JavaWEB</a></li>
				 <li><a href="#" title="Web前端">WEB前端</a></li>
				 <li><a href="#" title="3D打印课程">3D打印</a> </li>
				 <li><a href="#" title="C/嵌入式">嵌入式</a></li>
				 <li><a href="#" title="VR虚拟化课程">VR虚拟化</a> </li>
				 <li><a href="#" title="Linux">Linux</a></li>
				 <li> <a href="#" title="Microsoft">Microsoft</a></li>
				 <li><a href="#" title="协作">协作</a></li>
			 </ul>
			 <ul class="orange">
				 <li> <a href="#" title="CCNA">CCNA</a> </li>
				 <li> <a href="#" title="CCNP">CCNP</a> </li>
				 <li> <a href="#" title="CCIE">CCIE</a> </li>
				 <li> <a href="#" title="路由&交换">路由 &amp; 交换</a> </li>
				 <li> <a href="#" title="安全">安全</a> </li>
				 <li> <a href="#" title="数据中心">数据中心</a> </li>
				 <li><a href="#" title="软件工程">软件工程师</a> </li>
				 <li><a href="#" title="华为HCDA">华为HCDA</a></li>
			 </ul>
			 
	     </div>
       </div>
   </div>
</div>
<div class="container">
  <div class="grid_1">
	 <h3>推荐企业</h3>
	   <ul id="flexiselDemo3">
	      <li><img src="images/logo1.png"  class="img-responsive" /></li>
		  <li><img src="images/c2.gif"  class="img-responsive" /></li>
		  <li><img src="images/c3.gif"  class="img-responsive" /></li>
		  <li><img src="images/c4.gif"  class="img-responsive" /></li>
		  <li><img src="images/c5.gif"  class="img-responsive" /></li>
		  <li><img src="images/c6.gif"  class="img-responsive" /></li>
	    </ul>
	    <script type="text/javascript">
		 $(window).load(function() {
			$("#flexiselDemo3").flexisel({
				visibleItems: 6,
				animationSpeed: 1000,
				autoPlay:false,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: {
		    		portrait: {
		    			changePoint:480,
		    			visibleItems: 1
		    		},
		    		landscape: {
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: {
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });

		});
	   </script>
	   <script type="text/javascript" src="js/jquery.flexisel.js"></script>
	 </div>
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
          <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
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
					<!--<li><a href="#">BPO Private Limited in Canada</a></li>
					<li><a href="#">Executive Tracks Associates in Pakistan</a></li>
					<li><a href="#">Pyramid IT Consulting Pvt. Ltd. in Pakistan</a></li> -->
				</ul>
    	       
    	</div>
			<div class="col_3">
				<h3>联系我们</h3>
				<ul class="list_2">
				<li>地址：<br/>&nbsp;&nbsp;&nbsp;&nbsp;西安市西斜七路十字西北角紫薇龙腾新世界1号楼2504室</li><br/>
				<li>电话：<br/>&nbsp;&nbsp;&nbsp;&nbsp;4008-505-369、029-68029335、029-68208993</li><br/>
				<li>交通：<br/>&nbsp;&nbsp;&nbsp;&nbsp;乘坐教育专线、6路、14路、14路区间、16路、34路、35路、205路、210路、218路、219路、220路、268路、311路、
					313路、322路、400路、411路、503路、506路、508路、900路、900路区间、916路在西斜七路站下车即可</li>
				</ul>
			</div>
	 </div>
	   <div class="col-md-8">
	      <div class="col_1">
   	        <div class="col-sm-4 row_2">
				<img src="images/xinwen1.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="col-sm-8 row_1" style="position: absolute;top:10px;right:-80px">
				<h4><a>思迅全体员工恭祝大家“新春愉快，大吉大利”</a></h4>
				<h6><span class="dot">2017-1-1</span></h6>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;“一元复始山河美，万象更新锦绣春”，新年的脚步临近，西安思迅也将迈入新的一年。在此，思迅全体员工向广大的新老客户、向支持思迅的新老朋友，致以新年的问候：祝我们的广大客户在新的一年里身体健康!事业顺利!生意兴隆!2016年，是思迅与广大客户共同进步、合作愉快的一年，是思迅与许许多多的新老朋友携手共进、增进友谊的一年。祝所有的新老朋友们在2017年，大展鸿图!事业有成!身体健康!家庭幸福!
</p>
				
			</div>
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	         <div class="col-sm-4 row_2">
				<img src="images/1-161230115I3453.png" width="300" height="229" class="img-responsive" alt=""/>
			</div>
			<div class="col-sm-8 row_1"  style="position: absolute;top:290px;right:-80px">
				<h4><a>西安市雁塔区十七届人大一次会议在陕西宾馆大</a></h4>
				<h6><span class="dot">2016-12-30</span></h6>
				<p> 12月27日上午9:00，西安市雁塔区十七届人大一次会议在陕西宾馆大礼堂隆重召开，270名区人大代表参加会议，区十一届政协委员和不是代表的区级领导、区级部门主要负责同志以及各街办主要负责同志列席会议，主要听取了赵小林区长所作的政府工作报告，审查计划、财政报告。代表们带着120万雁塔人民的重托，将围绕区域经济社会发展、民生工作以及群众关心的热点问题开展审议，为区域经济建设献良方、为社会发展谋良策、为民生工作划良计、为城市管理谏良言，各抒己见谋发展，谏言献策议超越。</p>
				
			</div>
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	        <div class="col-sm-4 row_2">
				<img src="images/1-16120Q41U1Q4.png" width="300" height="229" class="img-responsive" alt=""/>
			</div>
			<div class="col-sm-8 row_1" style="position: absolute;top:570px;right:-80px"	>
				<h4><a>西安思迅电子信息科技有限公司入选中国2016成长型百强企业</a></h4>
				<h6><span class="dot">2016-12-08</span> </h6>
				<p>思于“智”，迅于“行”。<br>一直以来，思迅致力于大学生IT技能培养以及为客户提供更实用更贴切的技术服务。<br>如今秉承着“团结拼搏，追求卓越，积极进取，和谐共赢”，在全体干部职工的努力下，思迅成为了2016成长型百强企业之一，是为一大进步。</p>
				
			</div>
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	         <div class="col-sm-4 row_2">
				<img src="images/1-1610141QI3460.jpg" width="300"  class="img-responsive" alt=""/>
			</div>
			<div class="col-sm-8 row_1"  style="position: absolute;top:840px;right:-80px">
				<h4><a>西安大学生就业创业联盟工作研讨会</a></h4>
				<h6><span class="dot">2016-10-14</span></h6>
				<p>西安思迅科技有限公司作为“西安大学生就业创业联盟”的一员，为进一步发挥“西安大学生就业创业联盟”在西安地区政府、高校、企业、人力资源中介机构及培训机构等多方资源中的影响力，更好地开展西安大学生就业创业联盟活动，促进西安大学生高质量就业创业。10月14日，由西安市人力资源和社会保障局主办的“西安大学生就业创业联盟工作研讨会”在曲江宾馆举行。</p>
				
			</div>
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_1">
   	         <div class="col-sm-4 row_2">
				<img src="images/1-1610131139222Y.jpg" width="300" height="229" class="img-responsive" alt=""/>
			</div>
			<div class="col-sm-8 row_1"  style="position: absolute;top:1120px;right:-80px">
				<h4><a>“挑战52小时”硬创拉力赛</a></h4>
				<h6><span class="dot">2016-10-13</span></h6>
				<p>为响应李克强总理提出的“大众创业、万众创新”时代口号， 2016全国大众创业万众创新活动周于周三拉开帷幕，西安作为本次活动周分会场之一，将在七天内举办多场创业主题活动。<br>“挑战52小时”硬创拉力赛暨瞪羚谷创业社区启用仪式隆重举行</p>
				
			</div>
			<div class="clearfix"> </div>
		   </div>
		   <div class="col_2">
   	         <div class="col-sm-4 row_2">
				<img src="images/1-1610111KJ6423.png" width="300" height="229" class="img-responsive" alt=""/>
			</div>
			<div class="col-sm-8 row_1"  style="position: absolute;top:1370px;right:-80px">
				<h4><a>祝贺思迅科技与石油大学实习基地正式成立</a></h4>
				<h6><span class="dot">2016-10-11</span></h6>
				<p>祝贺：思迅科技与石油大学实习基地正式成立，思迅科技将不负社会所托，将大学生实习做好，让每一个参加实习的学生学到真技术，为即将毕业的学生找工作夯实基础！思迅科技肩负着西安市大学生实习的重任，让每一个学生学有所长，学以致用，习近平总书记提出，鼓励校企联合办学，实现学生学历文凭与技能认证的相结合，思迅科技，积极响应国家号召，让每一个学生在具备学历的基础上再具备相应的高科技技能，让学生高薪就业，就好业！</p>
				
			  </div>
			<div class="clearfix"> </div>
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
