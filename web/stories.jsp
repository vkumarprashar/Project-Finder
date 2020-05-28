<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Stories</title>
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
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- banner -->
	<div class="banner_inner_content_agile_w3l">
            <p style="font-size: 30px;">Success Inspirations</p>
	</div>
	<!--//banner -->
	<!--/w3_short-->
	<div class="services-breadcrumb_w3ls">
		<div class="inner_breadcrumb">

			<ul class="short">
				<li><a href="index.jsp">Home</a><span>|</span></li>
				<li>Customer Stories</li>
			</ul>
		</div>
	</div>
	<!--//w3_short-->

	<!-- /features -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle">Customer Success <span>Stories</span></h3>
			</div>
			<div class="inner_sec_info_agileits_w3">
				<div class="stories_in">
					<span class="fa fa-quote-left" aria-hidden="true"></span>
					<p> Success means doing the best we can with what we have. Success is the doing, not the getting; in the trying, not the triumph. Success is a personal standard, reaching for the highest that is in us, becoming all that we can be.?</p>
					<h5>- Zig Ziglar <span class="fa fa-quote-right" aria-hidden="true"></span></h5>

				</div>

			</div>
			<!-- /stories -->
			<div class="inner_sec_info_agileits_w3">
				<!-- /stories-one -->
				<div class="story_one_w3_agile">
					<div class="col-md-6 banner_bottom_left">
                                            <h4>Global Bank Improves Vendor Management <span>through KPIs & Benchmarks</span></h4>
						<p>With this vendor management system in place, we can now drive vendor behavior proactively and empower the vendor selection process with more quantitative insights. We make decisions now based on facts rather than just instinct.? </p>
                                                <span>- IT Executive, Global Banking & Financial Services Firm</span>

					</div>
					<div class="col-md-6 banner_bottom_right">
						<div class="w3layouts_banner_bottom_grid two">
							<img src="images/banner2.jpg" alt=" " class="img-responsive">

						</div>
					</div>

					<div class="clearfix"> </div>
				</div>
				<!-- //stories-one -->
				<div class="story_one_w3_agile">

					<div class="col-md-6 banner_bottom_right">
						<div class="w3layouts_banner_bottom_grid two">
							<img src="images/banner1.jpg" alt=" " class="img-responsive">

						</div>
					</div>
					<div class="col-md-6 banner_bottom_left">
						<h4>One Insight <span>To Reach Sky </span></h4>
						<p>"Kusto is a huge leap from Application Insights. Kusto Explorer, especially, is a joy to use. Now that we count on easy consumption, we can plan to log more data about our application," said Chad Chisholm, cloud services initiative lead at OSIsoft. Thanks to Kusto not only are we able to store large amounts of high frequency
                                                    telemetry data, we also have rich querying capability that has allowed us to develop insights into where and how our application is functioning under various conditions.</p>
                                                <span> - Manas Talukdar, software engineering team leader, OSIsoft, LLC</span>
					</div>

					<div class="clearfix"> </div>
				</div>
				<!-- //stories-one -->
				<!-- /stories-one -->
				<div class="story_one_w3_agile">
					<div class="col-md-6 banner_bottom_left">
                                            <h4>One Customization Can Change<span> Everything</span></h4>
						<p>Epec chose NetSuite over SAP and Microsoft Dynamics GP as a system that could be customized to meet its unique workflows and business processes for its production of 
                                                    custom-built electronics products while also supplying end-to-end design and manufacturing capabilities including bills of materials inquiries and MRP for greater control over production.</p>
                                                    - Ed McMahon, CEO, Epec Engineered Technologies
					</div>
					<div class="col-md-6 banner_bottom_right">
						<div class="w3layouts_banner_bottom_grid two">
							<img src="images/banner3.jpg" alt=" " class="img-responsive">

						</div>
					</div>

					<div class="clearfix"> </div>
				</div>
				<!-- //stories-one -->
			</div>
			<!-- /stories -->
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
	</script>
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
		var a=document.getElementById("support1");
		a.className="active";
	</script>
	<!-- //stats -->

	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>