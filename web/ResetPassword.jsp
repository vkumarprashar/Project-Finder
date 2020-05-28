<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
	if(session.getAttribute("email")==null)
	{	
		%>
			<h4>You are Not Allowed to access this Page. Thank You <h3><a href="index.jsp">CLICK HERE</a></h3>to go to the Home Page</h4>
		
		<%
	}
	else
	{
%>
	<div class="container">
		<div class="password">
			<div class="left" style="float: left;">
				<p>HELLOOo</p>
			</div>
			<div class="right" style="float: right;">
			<form action="resetpassword2.jsp" onsubmit="">
				<div>
					<label for="pass">New Password</label>
					<input type="text" name="pass" id="pass" class="textbox">
				</div>
				<div>
					<label for="cnpass">New Password</label>
					<input type="text" name="cnpass" id="cnpass" class="textbox" onkeyup="val()"><b id="message"></b></span>
				</div>
				<div>
					<input type="submit" value="Confirm Password" class="myButton ">
				</div>
			</form>
			</div>
		</div>
	</div>
	<%
	}
	%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
<script>
function val()
{
	if(document.getElementById("cnpass").value==document.getElementById("pass").value)
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