<%@page import="BeanClasses.SignUp"%>
<%@page import="BeanClasses.GetDetails"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trouble in Log-In</title>
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
	
	String email=(String) request.getParameter("fpmail");
	String option=(String) request.getParameter("option");
	if(option.equals("security"))
	{
		Iterator it=GetDetails.profile(email);
		if(it.hasNext())
		{
			SignUp su=(SignUp) it.next();
			%>
				<div>
					<form action="">
						<div>
							<label for="ques">Security Questions</label>
							<input type="text" name="question" id="ques" readonly="readonly" value="<%=su.getSecurityques()%>">
						</div>
						<div>
							<label for="ans">Answer</label>
							<input type="text" name="answer" id="ans">
						</div>
						<div>
							<input type="submit" value="SUBMIT">
						</div>
					</form>
				</div>
			<%
		}
		
	}
	else if(option.equals("email"))
	{
		%>
			<h3>Recovery Mail Has Been to your Email. Visit the Email to Recover your Email</h3>
		<%
	}
	else if(option.equals("sms"))
	{
		%>
			<h3>SMS HAS BEEN SENT TO YOUR MOBILE</h3>
		<%
	}
%>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>