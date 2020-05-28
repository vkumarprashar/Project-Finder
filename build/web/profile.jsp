<%@page import="BeanClasses.SignUp"%>
<%@page import="java.util.Iterator"%>
<%@page import="BeanClasses.GetDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Options</title>
<style>
.profile{
	margin: 20px;
}
.left{
float: left; 
height: auto;
margin-left:5%;

}
.left a{
	display: block;
	text-align: right;
	margin: 15px;
}
.right{
	float:left;
	width: 50%;
	border: 1px solid black;
}
.right1{
	float: right;
	width: 25%;
	background-color: red;
	border: 1px solid black;
}
</style>
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

</head>

<body onload="ldetails()">
<%
	
	String email=(String) session.getAttribute("email");
	Iterator it=GetDetails.profile(email);
	if(it.hasNext())
	{
		SignUp su=(SignUp) it.next();
%>
	
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- banner -->
	<div class="banner_inner_content_agile_w3l">
		 <p style="font-size: 30px;">Profile Info</p>
	</div>
	<!--//banner -->
	<!--/w3_short-->
	<div class="services-breadcrumb_w3ls">
		<div class="inner_breadcrumb">

			<ul class="short">
				<li><a href="index.html">Home</a><span>|</span></li>
				<li>Profile</li>
			</ul>
		</div>
	</div>
	<!--//w3_short-->

	<!-- /features -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle">Profile <span>Options </span></h3>
			</div>
			<div class="profile">
				<div class="left" id="leftdiv">
                                    <h2><a >Login Details</a></h2>
                                    <h4><a href="profilepdetails.jsp" >Technical Details</a></h4>
                                    <h4><a href="profilepassword.jsp"> Change Password</a></h4>
                                    <h4><a href="logout.jsp">LogOut</a></h4>
				</div>
				<div class="contact-form" >
					<form action="" onsubmit="">
						<div class="right_form" style="border-left: 1px solid #999; padding-left: 15px; align: left; width: 50%;">
                                                <div>
							<span><label for="name">Full Name</label></span>
							<span><input type="text" name="name" class="textbox" value="<%=su.getFullname() %>"readonly></span>
						</div>
						<div>
							<span><label for="Email">Email</label></span>
							<span><input type="text" name="email" class="textbox" value="<%=su.getEmail() %>" readonly></span>
						</div>
						<div>
							<span><label for="contact">Contact Number</label></span>
							<span><input type="text" name="contact" class="textbox" value="<%=su.getContact() %>" readonly></span>
						</div>
						<div>
							<span><label for="account">Security Question</label></span>
							<span><input type="text" name="account" class="textbox"  value="<%=su.getSecurityques() %>" readonly></span>
						</div>
					</div>
					</form>
				</div>
			</div>	
		</div>
	</div>
<%
	}
%>	
	
	<!-- //features -->
	
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
                
	</script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>