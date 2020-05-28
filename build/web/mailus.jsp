<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Contact with Us </title>
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
<!-- banner -->
	<div class="banner_inner_content_agile_w3l">
		 <p style="font-size: 30px;">We Are Here To Help You</p>
	</div>
	<!--//banner -->
	<!--/w3_short-->
	<div class="services-breadcrumb_w3ls">
		<div class="inner_breadcrumb">

			<ul class="short">
				<li><a href="index.jsp">Home</a><span>|</span></li>
				<li>Mail Us</li>
			</ul>
		</div>
	</div>
	<!--//w3_short-->
	<!-- /inner_content -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle">Mail <span>Us</span></h3>
			</div>
			<div class="inner_sec_info_agileits_w3">
               <div class="contact-text">
				    <div class="con-text">
					  <p><a href="mailto:contact@example.com" > info@projectvilla.com</a></p>
				     <p>+(91)9115847514</p>
					 <h6><a href="#map">CCET,sector-26,Chandigarh.</a></h6>
				  </div>
				 </div>

				<div class="contact-form">
					     
							<div class="left_form">
					    	<h1 style="margin: 0px 10px; color: black; font-weight: bold; font-size: 2em;">Message Us</h1>
					    	<p style="font-size: 1.2em; margin: 10px; color: black;">If you wish to be considered for employment or to share your projects at Project Villa,
					    	please do not send a message, here-instead complete the <a href="requestapplication.jsp" style="text-decoration: none; font-weight: bold;">Request Apllication</a>
					    	here and our team will contact you within 48 working hours after the review of your submitted information.</p>
					    	<img src="images/banner1.jpg" style="height: 200px; margin: 20px; border: 1px solid black;" alt="Project Villa"/>
					    </div>
					    <form action="mailus2.jsp" >
<%
	if(session.getAttribute("email")==null)
	{
%>
					    
					    <div class="right_form">
								<div>
						    	<span><label>Name(required)</label></span>
						    	<span><input name="name" type="text" class="textbox" required=""></span>
						    </div>
						    <div>
						    	<span><label>E-mail(required)</label></span>
						    	<span><input name="useremail" type="text" class="textbox" required="" ></span>
						    </div>
						    
<%
}
else
{
	String email=(String) session.getAttribute("email");
	String name=(String) session.getAttribute("name");
	%>
							<div class="right_form">
								<div>
						    	<span><label>Name(required)</label></span>
						    	<span><input name="name" type="text" class="textbox" value="<%=name%>" readonly="readonly"></span>
						    </div>
						    <div>
						    	<span><label>E-mail(required)</label></span>
						    	<span><input name="useremail" type="text" class="textbox" value="<%=email%>" readonly="readonly"></span>
						    </div>
						   
	<%
}
%>
								 <!-- <div>
						     	<span><label>Team to Contact</label></span>
						    	<span><input name="userPhone" type="text" class="textbox" required="" list="teams"></span>
						    	<datalist id="teams">
						    	<option value="Development">
						    	<option value="Management">
						    	<option value="Security">
						    	<option value="Executives">
						    	</datalist>
						    </div>
						    -->
								<div>					    	
									<span><label>Message(required)</label></span>
									<span><textarea name="message" required=""> </textarea></span>
								</div>
							   <div>
									<span><input type="submit" value="Submit"  class="myButton"></span>
							  </div>
					    </div>	
							 <div class="clearfix"></div>
						</form>
						<center><span style="margin: 10px 0px; color: black;">The shared Information will not be disclosed with anyone else</span></center>
				  </div>
			</div>
		

		</div>
	</div>
	
		<!-- /map -->
			<div class="map_w3layouts_agile" id="map">
				<iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJa8lu5gvtDzkR_hlzUvln_6U&key=AIzaSyCt_BvskVwOA9b6sjc_SZ-E7t-k5DCtrBc"></iframe>

			</div>
		<!-- //map -->
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
	</script>
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	
		var a=document.getElementById("mail");
		a.className="active";
		</script>
	
	<!-- //password-script -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>
