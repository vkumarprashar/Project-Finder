<%-- 
    Document   : GetDemo
    Created on : Apr 27, 2018, 9:17:10 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <title>Download Successful</title>
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
        
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div style='padding: 30px;'>
                    <p><h1 style="font-weight: bold;">Congratulations, </h1></p>
                    <h3>Your Project i.e('') had been successfully provided to you.</h3>
                </div>
                <div style="padding: 30px;">
                    <h2>Different ways to get Started with the project..?</h2>
                    <div style="margin-left: 15px;">
                        <ol>
                            <li><p style="font-size: 19px;">It is easy to get started with the downloaded project. The Start with Project File had been given to you!. You can check the File and follow the steps given in it to get the project in the working condition. Simple brief information will also be given about the project that will basically define the Flow of the Project.</p></li>
                            <li><h3><a href='GetDemo.jsp'>Get the Project Demo on Skype.</a></h3></li>
                        </ol>
                    </div>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
