<%@page import="BeanClasses.reviewBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="BeanClasses.ReviewGet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reviews</title>
<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
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
	<script src='https://www.google.com/recaptcha/api.js'></script>
</head>

<body >
	<jsp:include page="header.jsp"></jsp:include>
	<!-- banner -->
	<div class="banner_inner_content_agile_w3l">
		 <p style="font-size: 30px;">Your Reviews will help us to Make us Better!.</p>
	</div>
	<!--//banner -->
	<!--/w3_short-->
	<div class="services-breadcrumb_w3ls">
		<div class="inner_breadcrumb">

			<ul class="short">
				<li><a href="index.jsp">Home</a><span>|</span></li>
				<li>Reviews</li>
			</ul>
		</div>
	</div>
	<!--//w3_short-->
<%
	ReviewGet rg=new ReviewGet();
Iterator it=rg.get().iterator();
String review[]=new String[6];
String name[]=new String[6];
int i=0;
while(it.hasNext())
{
	reviewBean rb=(reviewBean) it.next();
	review[i]=rb.getMessage();
	name[i]=rb.getName();
	i++;
}	
%>

	<!-- /features -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle"><span>Reviews</span></h3>
			</div>
			<div class="inner_sec_info_agileits_w3">
				<div class="col-md-6 review_info_w3layouts_agileits">
					<div class="stories_in_review">
						<span class="fa fa-quote-left" aria-hidden="true"></span>
						<p> <%= review[0] %></p>
						<h5><%= name[0] %><span class="fa fa-quote-right" aria-hidden="true"></span></h5>

					</div>
				</div>
				<div class="col-md-6 review_info_w3layouts_agileits">
					<div class="stories_in_review">
						<span class="fa fa-quote-left" aria-hidden="true"></span>
						<p><%= review[1] %></p>
						<h5><%= name[1] %><span class="fa fa-quote-right" aria-hidden="true"></span></h5>
					</div>
				</div>
				<div class="col-md-6 review_info_w3layouts_agileits">
					<div class="stories_in_review">
						<span class="fa fa-quote-left" aria-hidden="true"></span>
						<p> <%= review[2] %></p>
						<h5>-<%= name[2] %><span class="fa fa-quote-right" aria-hidden="true"></span></h5>

					</div>
				</div>
				<div class="col-md-6 review_info_w3layouts_agileits">
					<div class="stories_in_review">
						<span class="fa fa-quote-left" aria-hidden="true"></span>
						<p><%= review[3] %></p>
						<h5>-<%= name[3] %><span class="fa fa-quote-right" aria-hidden="true"></span></h5>
					</div>
				</div>
				<div class="col-md-6 review_info_w3layouts_agileits">
					<div class="stories_in_review">
						<span class="fa fa-quote-left" aria-hidden="true"></span>
						<p><%= review[4] %></p>
						<h5>-<%= name[4] %><span class="fa fa-quote-right" aria-hidden="true"></span></h5>

					</div>
				</div>
				<div class="col-md-6 review_info_w3layouts_agileits">
					<div class="stories_in_review">
						<span class="fa fa-quote-left" aria-hidden="true"></span>
						<p><%= review[5] %></p>
						<h5>-<%= name[5] %><span class="fa fa-quote-right" aria-hidden="true"></span></h5>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //features -->
<%
	if(session.getAttribute("email")==null)
	{
%>
	
	
 				<div class="comments_agileits">
						<div class="contact-form left_bar">
							<h2>Write a <span>Review</span></h2>
							<form name="reviewform" method="post" action="Review2.jsp" onsubmit="return validateform()">
								<div class="left_form">
									<div>
										<span><label>Name*</label></span>
										<span><input name="name" type="text" class="textbox" required=""></span>
									</div>
									<div>
										<span><label>E-mail*</label></span>
										<span><input name="email" type="text" class="textbox" required=""></span>
									</div>
									<div>
										<span><label>Contact Number</label></span>
										<span><input name="contact" type="text" class="textbox" required=""></span>
									</div>
								</div>
								<div class="right_form">
									<div>
										<span><label>Your Review</label></span>
										<span><textarea name="review" required=""> </textarea></span>
									</div>
									<div class="g-recaptcha" data-sitekey="6LcAtkIUAAAAAMXTF2hhqTiIA8CQLQ2PF_d0u4Om"></div>
									<div>
										<span><input type="submit" value="Submit" class="myButton" ></span>
									</div>
								</div>
								<div class="clearfix"></div>
							</form>
						</div>
<%
	}
	else
	{
		String email=(String)session.getAttribute("email");
		String sessionname=(String) session.getAttribute("name");
		String contact=(String)session.getAttribute("contact");
		%>
		<div class="comments_agileits">
		<div class="contact-form left_bar">
			<h2>Write a <span>Review</span></h2>
			<form name="reviewform" method="post" action="Review2.jsp" onsubmit="return validateform()">
				<div class="left_form">
					<div>
						<span><label>Name</label></span>
						<span><input name="name" type="text" class="textbox" value="<%=sessionname%>" readonly="readonly"></span>
					</div>
					<div>
						<span><label>E-mail</label></span>
						<span><input name="email" type="text" class="textbox" value="<%=email%>" readonly="readonly"></span>
					</div>
					<div>
						<span><label>Contact Number</label></span>
						<span><input name="contact" type="text" class="textbox" value="<%=contact%>" readonly="readonly"></span>
					</div>
				</div>
				<div class="right_form">
					<div>
						<span><label>Your Review</label></span>
						<span><textarea name="review" required=""> </textarea></span>
					</div>
					<div class="g-recaptcha" data-sitekey="6LcAtkIUAAAAAMXTF2hhqTiIA8CQLQ2PF_d0u4Om"></div>
					<div>
						<span><input type="submit" value="Submit" class="myButton" ></span>
					</div>
				</div>
				<div class="clearfix"></div>
			</form>
		</div>
		</div>
<%
	}
%>			
	<!-- footer -->
<div style="margin-top: 40px;">
		<jsp:include page="footer.jsp"></jsp:include>
</div>
	<!-- //footer -->
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
		var a=document.getElementById("support1");
		a.className="active";
	</script>
	<script>
	function validateform(){  
		var name=document.reviewform.name.value;
		var email=document.reviewform.email.value;
		var contact=document.reviewform.contact.value;
		var phoneno = /^\d{10}$/;
		var message=document.reviewform.review.value;
		  
		  
		if (name!=null || name!="" ){
			if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))
			{
				if(contact.match(phoneno))
				{
					if(message!=null||message!="")
					{
						return true;
					}
					else
					{
					 	alert("Enter the review!");
					}
				}
				else
				{
					alert("Enter the valid Contact Number");
				}
			}
			else
			{
				alert("Enter valid Email Address");
				return false;
			}
		
		}
		else
		{  
		  alert("Name can't be blank");  
		  return false;  
		}
	}  
		</script>  
	
	
	<!-- //stats -->
	
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>