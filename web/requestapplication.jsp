<%@page import="BeanClasses.UserDetailsMethods"%>
<%@page import="BeanClasses.RequestedInsertion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Request Application </title>
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
        <style>
            .check_projects{
                border: 1px solid #DBDBDB;
                width: 100%;
                font-family: 'Source Sans Pro', sans-serif;
            }
        </style>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

<!-- banner -->
	<div class="banner_inner_content_agile_w3l" >
	  <p style="font-size: 30px;">Upload Project To Earn Money</p>
	</div>
	<!--//banner -->
	<!--/w3_short-->
	<div class="services-breadcrumb_w3ls">
		<div class="inner_breadcrumb">

			<ul class="short">
				<li><a href="index.jsp">Home</a><span>|</span></li>
				<li>Work With Us</li>
			</ul>
		</div>
	</div>
        <%
            String email=(String)request.getSession(false).getAttribute("email");
            int i=UserDetailsMethods.checkuser(email);
            if(i>0)
            {
                %>
                <h2 style="margin: 30px; color: black;">Switch to the work with us profile..?</h2>
                <p style="font-size: 1.2em; margin: 30px; color: black;">In work with us profile you can also be able to upload your own projects and can get the profit on each download of your project
                The Share of the profit that is given to you is 55%. It is not necessary to upload the projects at the regular intervals.
                By Switching to the work with us profile User's will also subscribe us for the regular work so that they are eligible for the Work requested by the user
                <h3 style="margin: 30px; "><a href="enteruserdetails.jsp">Click Here</a> to get Eligible for Work with us</h3></p>
                <%
            }
            else
            {
        %>
	<!--//w3_short-->
	<!-- /inner_content -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle">Work With <span>Us</span></h3>
			</div>
		    
				<div class="contact-form">
					 <div class="left_form">
					    	<h1 style="margin: 0px 10px; color: black; font-weight: bold; font-size: 2em;">Message Us</h1>
					    	<p style="font-size: 1.2em; margin: 10px; color: black;">EveryOne who is having the knowledege can do work for us. Here 
					    	you will also work from home.The Technical skills of the person are developed here. The great Working Enviorment will 
					    	be provided to you. We will be Enhanced If you work with us. Project Finder is not just a Team, They are the family. 
					    	</p>
					    	<br>
                                                <p style="font-size: 1.2em;">To check Your Requested Applications Status <a href="requestedApplicationStatus.jsp" style="font-size: 1.2em; font-weight: bold;">Click Here</a></p>
<!--					    	<img src="images/banner1.jpg" style="height: 200px; margin: 20px; border: 1px solid black;" alt="Project Villa"/>-->
                                            
                                            <div class="check_projects">
                                                <h3>Apply <span>here</span></h3>
                                                <p style="font-size: 20px;"><a>Click Here</a> to check & apply for the latest Demands of the Projects if interested. </p>
                                            </div>
					    </div>
                                    <form action="requestapplication2.jsp" enctype="multipart/form-data" method="post">
					    <div class="right_form">
							<div>
						    	<span><label>Project Name</label></span>
						    	<span><input name="projectname" type="text" class="textbox" required="" ></span>
						    </div>
							<div>
						    	<span><label>Technology the project made in</label></span>
						    	<span><select id="technology" name="technology" required="" style="width:100%; padding: 16px 15px; ">
                                                                <option value="null">Select Language</option>
                                                                <option value="ProjectsAndroid">Android</option>
                                                                <option value="ProjectsAjax">AJAX</option>
                                                                <option value="ProjectsC">C</option>
                                                                <option value="ProjectsCplus">C++</option>
                                                                <option value="ProjectsTemplates">HTML & CSS(Templates)</option>
                                                                <option value="ProjectsIOS">IOS</option>
                                                                <option value="ProjectsJava">Java</option>
                                                                <option value="Projectskotlin">Kotlin</option>
                                                                <option value="ProjectsPerl">Perl</option>
                                                                <option value="ProjectsPython">Python</option>
                                                                <option value="ProjectsRuby">Ruby</option>
                                                                <option value="ProjectsRubyOnRails">Ruby on Rails</option>
                                                                <option value="ProjectsVBNet">VB.Net</option>
                                                                <option value="ProjectsJ2EE">Web Designing using java</option>
                                                                <option value="ProjectsPHP">Web Designing using PHP</option>
                                                        </select><br></span>
						    </div>
						    
						    <div>
						    	<span><label>Project SnapShots File</label></span>
						    	<span><input name="synopsis" type="file" class="textbox" accept=".pdf,.doc,.docx" style="margin-left: 200px; width: 550px; "></span>
                                                        <span><p style="margin-top: 75px;">File Must contain the Screen Shots of the projects Upload the File only in PDF/DOC format</p></span>
						    </div>
								<div>					    	
									<span ><label>About Project</label></span>
									<span><textarea name="about" required=""></textarea></span>
								</div>
							   <div>
									<span><input type="submit" value="Submit"  class="myButton"></span>
							  </div>
							  	
					    </div>
					    
					    <div class="clearfix"></div>
						</form>
						<center><span style="margin: 10px 0px; color: black;">The shared Information will not be disclosed with anyone else</span></center>
				  </div>
                    <div class="inner_sec_info_agileits_w3">
               <div class="contact-text">
				    <div class="con-text">
					  <p><a href="mailto:contact@example.com" > info@projectvilla.com</a></p>
				     <p>+(91)9115847514</p>
					 <h6><a href="#map">CCET,sector-26,Chandigarh.</a></h6>
				  </div>
				 </div>
                        </div>
		</div>
	</div>
	
		<!-- /map -->
			<div class="map_w3layouts_agile" id="map">
				<iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJa8lu5gvtDzkR_hlzUvln_6U&key=AIzaSyCt_BvskVwOA9b6sjc_SZ-E7t-k5DCtrBc" allowfullscreen></iframe>

			</div>
		<!-- //map -->
	<!-- footer -->
        <%
            }
                %>
                
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
	
		var a=document.getElementById("demand");
		a.className="active";
		</script>
	
	<!-- //password-script -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>