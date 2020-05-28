<%@page import="BeanClasses.UserDetails"%>
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
		  <p style="font-size: 30px;">Detailed Info</p>
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
<%
    String email=(String)session.getAttribute("email");
    Iterator it=GetDetails.userDetails(email);
    if(it.hasNext())
    {
        UserDetails ud=(UserDetails) it.next();
%>
	<!-- /features -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle">Profile <span>Options </span></h3>
			</div>
			<div class="profile">
                            <div class="left" id="leftdiv">
                                <h4><a href="profile.jsp" >Login Details</a></h4>
                                <h2><a>Technical Details</a></h2>
                                <h4><a href="profilepassword.jsp"> Change Password</a></h4>
                                <h4><a href="logout.jsp">LogOut</a></h4>
                            </div>
                            <div class="contact-form" id="rightdiv">
                            <form action="">
                            <div class="right_form" style="border-left: 1px solid #999; padding-left: 15px; ">
                                <input type="text" value="<%=ud.getEmail()%>">
                                <h3>About Technologies that you know really well !!</h3>
                                <div style="text-align: left; float: left; width: 49%; border-right: 1px solid black; margin-top: 10px;">
                                    <h4>Technologies already Selected</h4>
                                    <ol>
                                    <%
                                    if(ud.getAjax()==1)
                                    {
                                        %>
                                        <li>Ajax</li>
                                        <%
                                    }
                                    if(ud.getAndroid()==1)
                                    {
                                        %>
                                        <li>Android</li>
                                        <%
                                    }
                                    if(ud.getC()==1)
                                    {
                                        %>
                                        <li>C</li>
                                        <%
                                    }
                                    if(ud.getCplus()==1)
                                    {
                                        %>
                                        <li>C ++</li>
                                        <%
                                    }
                                    if(ud.getHtmlandcss()==1)
                                    {
                                        %>
                                        <li>Html & CSS</li>
                                        <%
                                    }
                                    if(ud.getIos()==1)
                                    {
                                        %>
                                        <li>IOS</li>
                                        <%
                                    }
                                    if(ud.getJ2ee()==1)
                                    {
                                        %>
                                        <li>Java EE</li>
                                        <%
                                    }
                                    if(ud.getJava()==1)
                                    {
                                        %>
                                        <li>J2SE(Core Java)</li>
                                        <%
                                    }
                                    if(ud.getKotlin()==1)
                                    {
                                        %>
                                        <li>Kotlin</li>
                                        <%
                                    }
                                    if(ud.getPerl()==1)
                                    {
                                        %>
                                        <li>Perl</li>
                                        <%
                                    }
                                    if(ud.getPhp()==1)
                                    {
                                        %>
                                        <li>PHP</li>
                                        <%
                                    }
                                    if(ud.getPython()==1)
                                    {
                                        %>
                                        <li>Python</li>
                                        <%
                                    }
                                    if(ud.getRuby()==1)
                                    {
                                        %>
                                        <li>Ruby</li>
                                        <%
                                    }if(ud.getRublyonrails()==1)
                                    {
                                        %>
                                        <li>Ruby On Rails</li>
                                        <%
                                    }
                                    if(ud.getVbnet()==1)
                                    {
                                        %>
                                        <li>VB.Net</li>
                                        <%
                                    }
                                    %>
                                    </ol>
                                </div>
                                <div style="overflow: auto; margin-top: 10px;">
                                    <h4>All Technologies</h4>
                                    <input type="checkbox" id="ajax" <%if(ud.getAjax()==1){%>checked<%}%> value="Ajax">
                                    <label for="ajax">Ajax</label>
                                    <input type="checkbox" id="android" <%if(ud.getAndroid()==1){%>checked<%}%>>
                                    <label for="android">Android</label>
                                    <input type="checkbox" id="c" <%if(ud.getC()==1){%>checked<%}%>>
                                    <label for="c">C</label>
                                    <input type="checkbox" id="cplus" <%if(ud.getCplus()==1){%>checked<%}%>>
                                    <label for="cplus">C ++</label>
                                    <input type="checkbox" id="htmlcss" <%if(ud.getHtmlandcss()==1){%>checked<%}%>>
                                    <label for="htmlcss">HTML & CSS</label>
                                    <input type="checkbox" id="ios" <%if(ud.getIos()==1){%>checked<%}%>>
                                    <label for="ios">IOS</label>
                                    <input type="checkbox" id="j2ee" <%if(ud.getJ2ee()==1){%>checked<%}%>>
                                    <label for="j2ee">Java EE</label>
                                    <input type="checkbox" id="java" <%if(ud.getJava()==1){%>checked<%}%>>
                                    <label for="java">Java SE(Core Java)</label>
                                    <input type="checkbox" id="kotlin" <%if(ud.getKotlin()==1){%>checked<%}%>>
                                    <label for="kotlin">Kotlin</label>
                                    <input type="checkbox" id="perl" <%if(ud.getPerl()==1){%>checked<%}%>>
                                    <label for="perl">Perl</label>
                                    <input type="checkbox" id="php" <%if(ud.getPhp()==1){%>checked<%}%>>
                                    <label for="php">PHP</label>
                                    <input type="checkbox" id="rubyonrails" <%if(ud.getRublyonrails()==1){%>checked<%}%>>
                                    <label for="rubyonrails">Ruby On Rails</label>
                                    <input type="checkbox" id="ruby" <%if(ud.getRuby()==1){%>checked<%}%>>
                                    <label for="ruby">Ruby</label>
                                    <input type="checkbox" id="vbnet" onselect="edit('vbnet')" <%if(ud.getVbnet()==1){%>checked<%}%>>
                                    <label for="vbnet">VB.Net</label>
                                </div>
                            <div>
                                <%
                                if(ud.getSubscribed()==1)
                                {
                                    %>
                                    <p>You have Already subscribed for Updates regarding to work or the new projects</p>
                                    <%
                                }
                                else
                                {
                                    %>
                                    <input type="checkbox" name="subscribed" id="subs">
                                    <label for="subs">Subscribe here to get Updates regarding to work or the new projects</label>
                                    <%
                                }
                                %>    

                            </div>   
                                <input type="submit" value="Update">
                            </div>
                            
                            </form>
                            </div>
			</div>	
		</div>
	</div>
	<!-- //features -->
	<%
            }   
        %>
	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>