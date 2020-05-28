<%-- 
    Document   : GetDemo
    Created on : Apr 27, 2018, 9:49:05 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Get Demo via Skype</title>
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
        <div class='main'>
            <h2>Fill the Details to get a Demo.</h2>
            <form>
                <label for="skype">Skype Username</label>
                <input type="text" id="skype" name="skypeusername">
                <label for="purpose">Purpose of the Demo</label>
                <select id="purpose" name="purposeofdemo">
                    <option value="For the Installation of Project">For the Installation of Project</option>
                    <option value="For the Working of Project">For the Working of Project</option>
                    <option value="Both">Both</option>
                </select>
                <label for="date">Date</label>
                <input type="date" id="date" name="somedate" on>
                <label for="time">Timings</label>
                <%
                java.util.Date cdate=new java.util.Date();
                int hour=cdate.getHours();
                int date=cdate.getDate();
                System.out.print("TIME"+ cdate.getHours());
                System.out.print("DATE"+ date);
                %>
                <select id="time" name="timings">
                    
                    <option value="09:00 a.m" id="1st">09:00 a.m</option>
                    <option value="10:00 a.m">10:00 a.m</option>
                    <option value="11:00 a.m">11:00 a.m</option>
                    <option value="12:00 p.m">12:00 p.m</option>
                    <option value="01:00 p.m">01:00 p.m</option>
                    <option value="02:00 p.m">02:00 p.m</option>
                    <option value="03:00 p.m">03:00 p.m</option>
                    <option value="04:00 p.m">04:00 p.m</option>
                    <option value="05:00 p.m">05:00 p.m</option>
                    <option value="06:00 p.m">06:00 p.m</option>
                    <option value="07:00 p.m">07:00 p.m</option>
                    <option value="08:00 p.m">08:00 p.m</option>
                    <option value="09:00 p.m">09:00 p.m</option>
                    <option value="10:00 p.m">10:00 p.m</option>
                    <option value="11:00 p.m">11:00 p.m</option>
                </select>
                <input type="checkbox" onchange="document.getElementById('enter').disabled=!this.checked;" id="tc"><span>I have agreed to the <a href="">Terms & Conditions</a></span>
                <input type="submit" value="Submit" disabled="true" id="enter" >
            </form>
        </div>
    </body>
    <script>
        
            var today=new Date().toISOString().split('T')[0];
        document.getElementsByName("somedate")[0].setAttribute('min', today);
            function val()
            {
                alert('WORKING BHAI');
                var date=document.getElementsByName("somedate").value;
                if(date==today)
                {
                    alert('WORKING');
                    document.getElementsById("time").remove(1);
                }
            }
        
    </script>
</html>
