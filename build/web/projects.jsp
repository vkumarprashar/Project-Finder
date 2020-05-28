<%@page import="BeanClasses.ProjectsRuby"%>
<%@page import="BeanClasses.ProjectsPHP"%>
<%@page import="BeanClasses.ProjectsPython"%>
<%@page import="BeanClasses.ProjectsJ2EE"%>
<%@page import="BeanClasses.ProjectsIOS"%>
<%@page import="BeanClasses.ProjectsCplus"%>
<%@page import="BeanClasses.ProjectsC"%>
<%@page import="BeanClasses.ProjectsAndroid"%>
<%@page import="java.util.Iterator"%>
<%@page import="BeanClasses.GetProjects"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Different Projects</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Lively Chat Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
        <style type="text/css">
	.element
	{
		float: left;
		width: 350px;
		height: 350px;
		color: #fff;
		position: relative;
		border: 25px solid #fff;
                margin-left: 25px;
        }

	.front , .back
	{
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		backface-visibility:hidden;
		transition:all 0.5s ease;
	}

	.front
	{
		transform:rotateY(0deg);
	}

	.back
	{
		transform:rotateY(180deg);
		background-color: #333;
		color: #fff;
		text-align: center;
	}

	.element:hover .front
	{
		transform:rotateY(180deg);
	}

	.element:hover .back
	{
		transform:rotate(0deg);
	}

	.element .front img
	{
		width: 100%;
		height: 100%;
	}
        .heading{
            font-weight: bold;
            font-size: 50px;
            color: white;
            
        }
        .heading:hover{
            color: whitesmoke; 
        }
        .back-content{
            margin-top: 12%;
        }
        .inner{
            color: white;
        }
	</style>
        
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- banner -->
	<div class="banner_inner_content_agile_w3l">
	<p style="font-size: 30px;">Your Satisfaction Is Our Objective</p>
	</div>
	<!--//banner -->
	<!--/w3_short-->
	<div class="services-breadcrumb_w3ls">
		<div class="inner_breadcrumb">
			<ul class="short">
				<li><a href="index.jsp">Home</a><span>|</span></li>
				<li>Projects</li>
			</ul>
		</div>
	</div>
	<!--//w3_short-->

	<!-- /features -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle">Projects <span>Available</span></h3>
			</div>
<% 
	GetProjects gp=new GetProjects(); 
	Iterator it=null;
%>
			<div class="inner_sec_info_agileits_w3">
			    <div class="element">
                                <div class="front">
                                    <img src="images/c.jpg" class="img-responsive">
                                </div>
                                <div class="back">
                                    <div class="back-content">
                                        <a href="listprojects.jsp?from=ProjectsC" class="heading">Projects in C</a>
                                            <p class="inner">C is a powerful general-purpose programming language. It is fast, portable and available in all platforms.</p>
                                    </div>
                                </div>
                            </div>
				
                            <div class="element">
                                <div class="front">
                                    <img src="images/cplus.jpg" class="img-responsive">
                                </div>
                                <div class="back">
                                    <div class="back-content">
                                            <a href="listprojects.jsp?from=ProjectsCplus" class="heading">Projects in C++</a>
                                            <p class="inner">C++ is a sophisticated and an efficient programming language based on C. Many of today’s operating systems, browsers and games use C++ as their core language.</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="element">
                                <div class="front">
                                    <img src="images/java (1).jpg">
                                </div>
                                <div class="back">
                                    <div class="back-content">
                                            <a href="listprojects.jsp?from=ProjectsJava" class="heading">Projects in Java</a>
                                            <p class="inner">Java is a popular general-purpose programming language and computing platform. It is fast, reliable, and secure. </p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="element">
                                <div class="front">
                                    <img src="images/android.jpg">
                                </div>
                                <div class="back">
                                    <div class="back-content">
                                            <a href="listprojects.jsp?from=ProjectsAndroid" class="heading">Projects in Android</a>
                                            <p class="inner">Android is an open source and Linux-based operating system for mobile devices such as smart-phones and tablet computers.</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="element">
                                <div class="front">
                                    <img src="images/ioss.jpg">
                                </div>
                                <div class="back">
                                    <div class="back-content">
                                            <a href="listprojects.jsp?from=ProjectsIOS" class="heading">Projects in IOS</a>
                                            <p class="inner">Swift 4 is a new programming language developed by Apple Inc for iOS and OS X development. Swift 4 adopts the best of C and Objective-C.</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="element">
                                <div class="front">
                                    <img src="images/php.jpg">
                                </div>
                                <div class="back">
                                    <div class="back-content">
                                            <a href="listprojects.jsp?from=ProjectsPHP" class="heading">Projects in PHP</a>
                                            <p class="inner">PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.PHP is a widely-used, free, and efficient.</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="element">
                                <div class="front">
                                    <img src="images/VB-logo.jpg">
                                </div>
                                <div class="back">
                                    <div class="back-content">
                                            <a href="listprojects.jsp?from=ProjectsVBNet" class="heading">Projects in VB.Net</a>
                                            <p class="inner">VB.Net is a simple, modern, object-oriented computer programming language. VB.Net programming is very much based on Visual Basic.</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="element">
                                <div class="front">
                                    <img src="images/python.jpg">
                                </div>
                                <div class="back">
                                    <div class="back-content">
                                            <a href="listprojects.jsp?from=ProjectsPython" class="heading">Projects in Python</a>
                                            <p class="inner">Python is a powerful high-level, object-oriented programming language. It has wide range of applications from Web development, GUI etc.</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="element">
                                <div class="front">
                                    <img src="images/rubyy.jpg">
                                </div>
                                <div class="back">
                                    <div class="back-content">
                                            <a href="listprojects.jsp?from=ProjectsRuby" class="heading">Projects in Ruby</a>
                                            <p class="inner">Ruby is a scripting language. It runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX.</p>
                                    </div>
                                </div>
                            </div>
				
			</div>
				<div class="clearfix"></div>
				<div class="inner_sec_info_agileits_w3">

					<div class="col-md-6 banner_bottom_left">
						<h4>Easy Editing & <span>Installation </span></h4>
						<p>-->The Projects provided on our Website are Very Easy to Edit and Install.</p>
						<p>-->If you have a problem in editing and installing ,the Customer can contact our executive for help 24X7.</p>
						<ul class="some_agile_facts">
							<li><span class="fa fa-code" aria-hidden="true"></span> Customization</li>
							<li><span class="fa fa-comments" aria-hidden="true"></span> Support Links</li>
							<li><span class="fa fa-spinner" aria-hidden="true"></span> Installation</li>

						</ul>
						<div class="clearfix"> </div>
					</div>
					<div class="col-md-6 banner_bottom_right">
						<div class="agileits_w3layouts_banner_bottom_grid">
							<img src="images/know.jpg" alt=" " class="img-responsive">

						</div>
					</div>

					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //features -->


	<!-- footer -->

		<jsp:include page="footer.jsp"></jsp:include>

	<!-- //footer -->
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
		var a=document.getElementById("projects1");
		a.className="active";
	</script>
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->

	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>