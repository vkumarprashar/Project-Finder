<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="BeanClasses.ReviewGet"%>
<%@page import="java.util.Iterator"%>
<%@page import="BeanClasses.HitCounterInsertion"%>
<%@page import="BeanClasses.HitCounter"%>

<html>
<head>
    <title>Home-Project Finder</title>
	<!--/tags -->
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Project Finder" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
        <script src="js/jquery.js"></script>
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
	
	.details-form{
	float: left;
	dispay: responsive;
	padding: 7px 5px;
	}
	.details-form input[type="text"],textarea{
		width: 95%;
		padding: 12px 10px;
		color: black;
	}
	.details-form textarea{
		display: block;
		height: 190px;
	}
	.details-form select{
		width: 86%;
		padding: 10px;
		color: 1px solid black;
		margin-bottom: 5px;
	}
	.details-form label{
		font-size: 1.1em;
		margin: 5px;
	}
	.details-form input[type="submit"]{
		width: 40%;
		background-color: #2db92d;
		color: white;
		border: none;
		padding: 10px;
		font-size: 1.3em;
		display: block;
		margin-top: 10px;
		margin-left: 20%;
	}
	.details-form input[type="submit"]:hover{
		background-color: #239023;
		font-weight: bold;
	}
	a.back-to-top {
	display: none;
	width: 40px;
	height: 40px;
	text-indent: -9999px;
	position: fixed;
	z-index: 999;
	right: 20px;
	bottom: 20px;
	background: black url("images/i2.png") no-repeat center 43%;
	margin-right: 20px;
	margin-bottom:10px;
}
	
	</style>
</head>
<body onload="val()">
	<jsp:include page="header.jsp"></jsp:include>
	<%
	HitCounterInsertion hci=new HitCounterInsertion();
	Long s=null;
	Long downloadget =null;
	Iterator it=hci.get();
	if(it.hasNext())
	{
		HitCounter hc=(HitCounter) it.next();
		System.out.println(hc.getHitcounter());
		s=hc.getHitcounter();
		downloadget=hc.getDownloads();
	}
	else
	{
		System.out.println("ERROR");
	}
	s=s+Long.valueOf(1);
	System.out.println("HIT COUNTER:-"+s);
	HitCounter hc=new HitCounter();
	hc.setHitcounter(s);
	int i=hci.insert(hc);
	Iterator review=ReviewGet.count();
	
	%>
        <a href="#" class="back-to-top">Back to Top</a>
	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel" >
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h3>You are Dealing with our <span>Hard-work</span></h3>
						<p>You deserve the best.</p>
						<div class="banner_form_agileits">
							<form action="search.jsp" method="post">
								<input type="search" name="search" placeholder="Search here..." required="required">
								<select name="technology" id="country12" onchange="change_country(this.value)" class="frm-field required">
                                                                        <option value="null">Select Language</option>
                                                                        <option value="all">All</option>
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
								</select>
								<input type="submit" value="Search">
								<div class="clearfix"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">
						
						<h3>Selling Genuine,<span>not fakes.</span></h3>
						<p>You deserve the real one.</p>
						<div class="banner_form_agileits">
							<form action="search.jsp" method="post">
								<input type="search" name="search" placeholder="Search here..." required="required">
								<select name="technology" id="country12" onchange="change_country(this.value)" class="frm-field required">
																			<option value="null">Select Language</option>
                                                                        <option value="all">All</option>
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
								</select>
								<input type="submit" value="Search">
								<div class="clearfix"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
						
						<h3>Delivering successful <span>results.</span></h3>
						<p>Working for you.</p>
						<div class="banner_form_agileits">
							<form action="search.jsp" method="post">
								<input type="search" name="search" placeholder="Search here..." required="required">
								<select name="technology" id="country12" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">Select Language</option>
                                                                        <option value="all">All</option>
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
								</select>
								<input type="submit" value="Search">
								<div class="clearfix"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="item item4">
				<div class="container">
					<div class="carousel-caption">

						<h3>We are always available to <span>help you.</span></h3>
						<p>You are important for us.</p>
						<div class="banner_form_agileits">
							<form action="search.jsp" method="post">
								<input type="search" name="search" placeholder="Search here..." required="required">
								<select name="technology" id="country12" onchange="change_country(this.value)" class="frm-field required">
																			<option value="null">Select Language</option>
                                                                        <option value="all">All</option>
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
								</select>
								<input type="submit" value="Search">
								<div class="clearfix"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="fa fa-chevron-left" aria-hidden="true" style="margin-top:270px;"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="fa fa-chevron-right" aria-hidden="true" style="margin-top:270px;"></span>
			<span class="sr-only">Next</span>
		</a>
		<!-- The Modal -->
	</div>
	<!--//banner -->
	<!--/icons-->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle main">The fastest way to <span> help our customers</span></h3>

			</div>
			<div class="inner_sec_info_agileits_w3">
				<div class="col-md-4 grid_info">
					<div class="icon_info">
						<span class="fa fa-microphone" aria-hidden="true"></span>
						<h5>Voice Chat</h5>
						<p>Customers can directly talk to our executives or developers for any type of queries.</p>
					</div>
				</div>
				<div class="col-md-4 grid_info">
					<div class="icon_info">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
						<h5>Email Chat</h5>
						<p>Customers can Email there queries through e-mail. The reply must be given to them within 48 working hours.</p>
					</div>
				</div>
				<div class="col-md-4 grid_info">
					<div class="icon_info">
						<span class="fa fa-video-camera" aria-hidden="true"></span>
						<h5>Live Chat</h5>
						<p>Customers can also get the Live project Demo Through Skype and can ask there queries as well.</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--//icons-->
	<!--//banner-bottom-->
	<div class="ab_info">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle">It is super easy to <span>Get Projects</span></h3>
			</div>
			<div class="inner_sec_info_agileits_w3">

				<div class="col-md-6 banner_bottom_left">
					
					<ul class="some_agile_facts">
						<li><span class="fa fa-sign-in " aria-hidden="true"></span> Easy Signup</li>
							<p>Easy process to get Signup and to enchance the <span>features.</span></p>
						<li><span class="fa fa-folder-open " aria-hidden="true"></span> Find Projects</li>
							<p>Find the any type of project you want from the available thousands of projects.</p>
						<li><span class="fa  fa-skype" aria-hidden="true"></span> Get the Demo</li>
							<p>Choose the project and the get the project Demo online through Skype.</p>
						<li><span class="fa fa-credit-card-alt" aria-hidden="true"></span> Easy payment Mode</li>
							<p>Make the payment according to the data you want.</p>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 banner_bottom_right">
					<div class="banner_bottom_grid">
						<img src="images/ab.png" alt=" " class="img-responsive" />
					</div>
				</div>

				<div class="clearfix"> </div>
			</div>

		</div>
	</div>
	<!-- //ab-info -->
	<!-- /mid -->
	<div class="team_work">
		<h4> One support hub for all our customer interactions.</h4>
	</div>
	<!-- //mid -->
	<!-- /features -->
	<div class="features" id="features">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle">Powerful <span>Features</span></h3>
			</div>
			<div class="inner_sec_info_agileits_w3">
				<!-- <div class="border1"> -->
				<div class="border">
					<div class="bordergrid1">
						<div class="text live">
							<h4>Well Designed Projects</h4>
							<p>All the available Projects are designed by the professionals with the powerful developing skills.</p>
						</div>
						<div class="icon">
							<i class="fa fa-" aria-hidden="true"></i>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bordergrid2">
						<div class="col-md-9 text">
							<h4>Complete Project Work</h4>
							<p>All the projects will be provided with there Project reports and Projects PPT's.</p>
						</div>
						<div class="col-md-3 icon">
							<i class="fa fa-laptop" aria-hidden="true"></i>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bordergrid5">
						<div class="col-md-9 text">
							<h4>Customize Quickly</h4>
							<p>Projects can be customized according to yours need.</p>
						</div>
						<div class="col-md-3 icon">
						<i class="fa fa-cubes" aria-hidden="true"></i>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bordergrid3">
						<div class="col-md-3 icon">
							<i class="fa fa-eye" aria-hidden="true"></i>
						</div>
						<div class="col-md-9 text">
							<h4>24*7 Helpline</h4>
							<p>Our Executives are availble 24*7 for your help. You can also ask your Queries through mail.</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bordergrid6">
						<div class="col-md-3 icon">
							<i class="fa fa-eye" aria-hidden="true"></i>
						</div>
						<div class="col-md-9 text">
							<h4>Secure Payment</h4>
							<p>We have the Secure Payment Modes.</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bordergrid4">
						<div class="icon">
							<i class="fa fa-laptop" aria-hidden="true"></i>
						</div>
						<div class="text live">
							<h4>Coach and monitor.</h4>
							<p>All the activites on the website are monitored by our security Team.</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="bulb">
						<img src="images/pic.jpg" alt="" />
					</div>
				</div>
				<!-- </div> -->
			</div>
		</div>
	</div>
	<!-- //features -->
	<!-- stats -->
	<div class="stats">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle con">S<span>tats</span></h3>
			</div>
			<div class="inner_sec_info_agileits_w3">
				<div class="stats_inner_grids">
					<div class="col-md-3 stats_left counter_grid">
						<i class="fa fa-users" aria-hidden="true"></i>
						<p class="counter">4</p>
						<h4>Professionals</h4>
					</div>
					<div class="col-md-3 stats_left counter_grid1">
						<i class="fa fa-folder-open" aria-hidden="true"></i>
						<p class="counter">380</p>
						<h4>Projects</h4>
					</div>
					<div class="col-md-3 stats_left counter_grid2">
						<i class="fa fa-download" aria-hidden="true"></i>
						<p class="counter"><%=downloadget %></p>
						<h4>Downloads</h4>
					</div>
					<div class="col-md-3 stats_left counter_grid3">
						<i class="fa fa-bar-chart" aria-hidden="true"></i>
						<p class="counter"><%=s%></p>
						<h4>Hit Counter</h4>
					</div>
					
					<!-- <div class="col-md-3 stats_left counter_grid4">
						<i class="fa fa-question-circle-o" aria-hidden="true"></i>
						<p class="counter"><%//if(review.hasNext()){out.print(review.next());} %></p>
						<h4>Reviews</h4>
					</div>
					 -->
					
					
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //stats -->
	<!-- /help_full -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle main">Project's on User's Demand <span>the way it should be</span></h3>

			</div>
			<div class="inner_sec_info_agileits_w3">
					<div class="help_full">
						<div class="col-md-6 banner_bottom_grid help">
							<img src="images/help.jpg" alt=" " class="img-responsive">
						</div>
                                                <%
                                                if(session.getAttribute("email")==null)
                                                {
                                                %>
                                                
							<div class="col-md-6 banner_bottom_left">
							<div class="details-form" id="demand">
									<center><h4>Share your Theme or Idea</h4></center>
									<form action="indexDemand.jsp" >
										<label for="name">What should we call you?</label>
										<input type="text"  id="name" name="name" required="" placeholder="Enter your Name">
										<label for="email">Share you email address</label>
										<input type="text"  id="email" name="email" required="" placeholder="Enter your Email Address">
										<label for="contact">Share you Contact Details</label>
										<input type="text" id="contact" name="contact" required="" Placeholder="Mobile Number">
                                                                                <label for="contact">Enter the Request Title</label>
										<input type="text" id="contact" name="requesttittle" required="" Placeholder="Enter the Title for the Requesrt(eg. School Website)">
										<label for="language">Select Language</label><br>
										<!-- Still to add scroll bar in select tag -->
										<select id="language" name="language" required="" style="width:100%; padding: 16px 15px; ">
											<option value="null">Select Language</option>
											<option value="android">Android</option>
											<option value="C">C</option>
											<option value="C#">C#</option>
											<option value="C++">C++</option>
											<option value="html">HTML & CSS</option>
											<option value="ios">IOS</option>
											<option value="Java">Java</option>
											<option value="js">JavaScript</option>
											<option value="kotlin">Kotlin</option>
											<option value="perl">Perl</option>
											<option value="python">Python</option>
											<option value="ruby">Ruby</option>
											<option value="vb.net">VB.Net</option>
											<option value="vbscript">VB Script</option>
											<option value="j2ee">Web Designing using java</option>
											<option value="php">Web Designing using PHP</option>
										</select><br>
										<label for="details">Details</label>
										<textarea id="details" name="details" required="" placeholder="Tell us what you want or what is your Project Theme.?"></textarea>
										<span style="color: black; font-size: 1em;">The details shared with us will not be disclosed with anyone else.</span>
										<input type="submit" value="Submit">
									</form>
									<div class="clearfix"></div>
									
								</div>
							</div>
                                                        <%
                                                        }
                                                        else
                                                        {
                                                        String email=(String)session.getAttribute("email");
                                                        String name=(String)session.getAttribute("name");
                                                        String contact=(String) session.getAttribute("contact");
                                                        %>
                                                        <div class="col-md-6 banner_bottom_left">
							<div class="details-form" id="demand">
									<center><h4>Share your Theme or Idea</h4></center>
									<form action="indexDemand.jsp" >
										<label for="name">What should we call you?</label>
                                                                                <input type="text"  id="name" name="name" required="" value="<%=name%>" readonly="">
										<label for="email">Share you email address</label>
										<input type="text"  id="email" name="email" required="" value="<%=email%>" readonly="">
										<label for="contact">Share you Contact Details</label>
										<input type="text" id="contact" name="contact" required="" value="<%=contact%>" readonly="">
										<label for="language">Select Language</label><br>
										<!-- Still to add scroll bar in select tag -->
										<select id="language" name="language" required="" style="width:100%; padding: 16px 15px; ">
											<option value="null">Select Language</option>
											<option value="android">Android</option>
											<option value="C">C</option>
											<option value="C#">C#</option>
											<option value="C++">C++</option>
											<option value="html">HTML & CSS</option>
											<option value="ios">IOS</option>
											<option value="Java">Java</option>
											<option value="js">JavaScript</option>
											<option value="kotlin">Kotlin</option>
											<option value="perl">Perl</option>
											<option value="python">Python</option>
											<option value="ruby">Ruby</option>
											<option value="vb.net">VB.Net</option>
											<option value="vbscript">VB Script</option>
											<option value="j2ee">Web Designing using java</option>
											<option value="php">Web Designing using PHP</option>
										</select><br>
										<label for="details">Details</label>
										<textarea id="details" name="details" required="" placeholder="Tell us what you want or what is your Project Theme.?"></textarea>
										<span style="color: black; font-size: 1em;">The details shared with us will not be disclosed with anyone else.</span>
										<input type="submit" value="Submit">
									</form>
									<div class="clearfix"></div>
									
								</div>
							</div>
                                                                                <%
                                                        }
                                                                                %>
						</div>
				</div>
		</div>
	</div>
	<!-- //help_full -->
	<div class="tesimonials">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle con">Customer <span>Testimonials</span></h3>
			</div>
			<div class="inner_sec_info_agileits_w3">
				<div class="test_grid_sec">
					<div class="col-md-offset-2 col-md-8">
						<div class="carousel slide two" data-ride="carousel" id="quote-carousel">
							<!-- Bottom Carousel Indicators -->
							<ol class="carousel-indicators two">
								<li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
								<li data-target="#quote-carousel" data-slide-to="1"></li>
								<li data-target="#quote-carousel" data-slide-to="2"></li>
							</ol>

							<!-- Carousel Slides / Quotes -->
							<div class="carousel-inner">

								<!-- Quote 1 -->
								<div class="item active">
									<blockquote>
										<div class="test_grid">
											<div class="col-sm-3 text-center test_img">
												<img src="images/t1.jpg" alt=" " class="img-responsive" />

											</div>
											<div class="col-sm-9 test_img_info">
												<p>The Project Finder is really awesome. They developed my project like excatly what I want!.</p>
												<h6>Sara Lisbon</h6>
											</div>
										</div>
									</blockquote>
								</div>
								<!-- Quote 2 -->
								<div class="item">
									<blockquote>
										<div class="test_grid">
											<div class="col-sm-3 text-center test_img">
												<img src="images/t2.jpg" alt=" " class="img-responsive" />
											</div>
											<div class="col-sm-9 test_img_info">
												<p>The prices of Project Finder is very geniune according to there work. Projects provided by them have the   
												 Quality in it. </p>
												<h6>Jane Wearne</h6>
											</div>
										</div>
									</blockquote>
								</div>
								<!-- Quote 3 -->
								<div class="item">
									<blockquote>
										<div class="test_grid">
											<div class="col-sm-3 text-center test_img">
												<img src="images/t3.jpg" alt=" " class="img-responsive" />
											</div>
											<div class="col-sm-9 test_img_info">
												<p>If you want a real project dont waste your time on Other websites or on Hooker's Get your Project Now 
												from the Project Finder.</p>
												<h6>Alice Williams</h6>
											</div>
										</div>
									</blockquote>
								</div>
							</div>

							<!-- Carousel Buttons Next/Prev -->
							<a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
							<a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->
	
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script>
		var a=document.getElementById("home1");
		a.className="active";
	</script>
	
	<script src="js/jquery.js"></script>
	
	<script type="text/javascript">
	$('body').prepend('<a href="#" class="back-to-top">Back to Top</a>');

</script>
<script>
var amountScrolled = 700;

$(window).scroll(function() {
	if ( $(window).scrollTop() > amountScrolled ) {
		$('a.back-to-top').fadeIn('slow');
	} 
	else {
		$('a.back-to-top').fadeOut('slow');
	}
});
$('a.back-to-top').click(function() {
	$('body, html').animate({
		scrollTop: 0
	},2000);
	return false;
});
</script>

</body>

</html>