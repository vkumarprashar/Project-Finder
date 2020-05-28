<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="footer_top_agile_w3ls">
		<div class="container">
			<div class="col-md-3 footer_grid">
				<h3>About Us</h3>
				<p>Project Villa is the Only Place where you will find the Legal Projects The Large variety of Projects is available. Demo's Available.

				</p>
				<div class="social">
					<ul>
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-rss"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 footer_grid">
				<h3>Latest News</h3>
				<ul class="footer_grid_list">
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="single.html"> </a>
					</li>
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="single.html"></a>
					</li>
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="single.html"> </a>
					</li>
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="single.html"></a>
					</li>
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="single.html"></a>
					</li>
				</ul>
			</div>
			<div class="col-md-3 footer_grid">
				<h3>Contact Info</h3>
				<ul class="address">
					<li><i class="fa fa-map-marker" aria-hidden="true"></i>CCET, Sector 26, <span>Chandigarh, India.</span></li>
					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
					<li><i class="fa fa-phone" aria-hidden="true"></i>+09187 8088 9436</li>
				</ul>
			</div>
			<div class="col-md-3 footer_grid ">
				<h3>Sign up for our Newsletter</h3>
				<p>Get Started For Free</p>
				<div class="footer_grid_right">
                                    <%if(session.getAttribute("email")==null){%>
					<form action="subscribe.jsp" method="post">
						<input type="email" name="email" placeholder="Email Address..." required="required">
						<input type="submit" value="Subscribe">
					</form>
                                    <%
                                    }
                                    else
                                    {
                                    %>  
                                        <form action="subscribe.jsp" method="post">
                                            <label>Subscribe to Stay Connected to Project Finder</label>
						<input type="submit" value="Subscribe">
					</form>
                                    <%}%>
				</div>
			</div>
			<div class="clearfix"> </div>

		</div>
	</div>
	<div class="footer_wthree_agile">
		<p>© 2018 Project Villa. All rights reserved | Design by <a href="">Common People's</a></p>

	</div>

</body>
</html>