<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Options</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="C://Users/Dell/Desktop/javascript/JQuery/JQuery.js"></script>
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
#npassword,#cnpassword{
	width: 100%;
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
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- banner -->
	<div class="banner_inner_content_agile_w3l">
		  <p style="font-size: 30px;">Password That Defines You</p>
	</div>
	<!--//banner -->
	<!--/w3_short-->
	<div class="services-breadcrumb_w3ls">
		<div class="inner_breadcrumb">
			<ul class="short">
				<li><a href="index.html">Home</a><span>|</span></li>
				<li>Plans</li>
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
                                    <h4><a href="profile.jsp">Login Details</a></h4>
                                    <h4><a href="profilepdetails.jsp" >Technical Details</a></h4>
                                    <h2><a> Change Password</a></h2>
                                    <h4><a href="logout.jsp">LogOut</a></h4>
				</div>
				<div class="contact-form" id="rightdiv">
					<form action="passwordupdate.jsp" onsubmit="" name="form">
					<div class="right_form" style="border-left: 1px solid #999; padding-left: 15px;">
						<div>
							<span><label for="cpassword">Current Password</label></span>
							<span><input type="text" name="cpassword" class="textbox" ></span>
						</div>
						<div>
							<span><label for="npassword">New Password</label></span>
							<span><input type="password" name="npassword" id="npassword"class="textbox" ></span>
						</div>
						<div>
							<span><label for="cnpassword">Confirm New Password</label></span>
							<span><input type="password" name="cnpassword" id="cnpassword"class="textbox" onkeyup="val()"><b id="message"></b></span>
						</div>
						<div>
							<span><input type="submit" value="Change Password" class="myButton"></span>
						</div>
					</div>	
					</form>
				</div>
			</div>	
		</div>
	</div>
	<!-- //features -->
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
<script>
function val()
{
	if(document.getElementById("cnpassword").value==document.getElementById("npassword").value)
	{
		document.getElementById("message").innerHTML="Password Matched";	
		document.getElementById("message").style.color="green";
	}
	else
	{
		document.getElementById("message").innerHTML="Password DoNot Matched";
		document.getElementById("message").style.color="red";
	}
}


</script>
</html>