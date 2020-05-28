<%@page import="BeanClasses.UserDetails"%>
<%@page import="BeanClasses.UserDetailsMethods"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.List"%>
<%@page import="BeanClasses.SignUp"%>
<%@page import="BeanClasses.RequestedApplications"%>
<%@page import="java.util.Iterator"%>
<%@page import="BeanClasses.RequestedInsertion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
        #main{
            border-bottom: 1px solid black;
        }
        .heading{
            font-weight: bold;
            font-size: 20px;
        }
        td{
            text-align: center;
            width: 220px;
        }
        table{
            margin-left: 10%;
            margin-top: 03%;
            margin-bottom: 03%;
            font-size: 18px;
           
        }
        </style>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


<%
String email=(String) session.getAttribute("email");
Iterator it=UserDetailsMethods.getemail(email);
 int status=0;

String name=null;
%>
	<table>
	<tr id="main">
            <td class="heading">Project Name </td>
            <td class="heading">Project Technology</td>
            <td class="heading">Upload Date</td>
            <td class="heading">Cost Decided</td>
            <td class="heading">Status</td>
	</tr>
        
	<%
if(it.hasNext())
{
UserDetails su=(UserDetails) it.next();
Set se=su.getRequestapp();
Iterator it2=se.iterator();
while(it2.hasNext())
{
RequestedApplications ra=(RequestedApplications) it2.next();
    float cost=(float)ra.getCost();
    System.out.println("INTEGER COST="+cost);
String Cost=String.valueOf(cost);
System.out.println("String COST="+Cost);
String tech=null;
if(ra.getTechnology().equals("ProjectsAndroid"))
{
    tech= "Android";
}
else if(ra.getTechnology().equals("ProjectsAjax"))
{
    tech= "Ajax";
}
else if(ra.getTechnology().equals("ProjectsJava"))
{
    tech= "Java";
}
else if(ra.getTechnology().equals("ProjectsJ2EE"))
{
    tech= "Java EE";
}
else if(ra.getTechnology().equals("ProjectsC"))
{
    tech= "C";
}
else if(ra.getTechnology().equals("ProjectsCplus"))
{
    tech= "C++";
}
else if(ra.getTechnology().equals("ProjectsIOS"))
{
    tech= "IOS";
}
else if(ra.getTechnology().equals("ProjectsPHP"))
{
    tech= "PHP";
}
else if(ra.getTechnology().equals("ProjectsRuby"))
{
    tech= "Ruby";
}
else if(ra.getTechnology().equals("ProjectsRubyOnRails"))
{
    tech= "Ruby On Rails";
}
else if(ra.getTechnology().equals("ProjectsPython"))
{
    tech= "Python";
}
else if(ra.getTechnology().equals("ProjectsKotlin"))
{
    tech= "Kotlin";
}
else if(ra.getTechnology().equals("ProjectsPerl"))
{
    tech= "Perl";
}
else if(ra.getTechnology().equals("ProjectsVBNet"))
{
    tech= "VB.Net";
}
status=ra.getStatus();
name=ra.getProjectname();
%>
        <tr>
            <td><%=name%></td>
            <td><%=tech%></td>
            <td><%=ra.getTime()%></td>
            <td><pre>
                Total Cost: <%=ra.getCost()%>
                Your Share: <%=(cost/100)*60%>
                </pre></td>
            <td><%if(status==1){out.println("Approved");%>
                <a style="display: block;" href="uploadproject.jsp?sno=<%=ra.getSno()%>&pname=<%=ra.getProjectname()%>&tech=<%=ra.getTechnology()%>&pcost=<%=Cost%>">Upload Complete Project</a>
                <%}else if(status==0){out.println("Pending");} else if(status==2){out.println("Rejected");}else {out.println("Already submitted");}%></td>
	</tr>
	

    <%
                
}
}
%>
</table>

                
                <center><p style="margin-left: 15%; margin-right: 15%; font-size: 1.2em;">The Total Cost is the Cost Decided by the team according to your Project Description given by you.
                         The Share that is given to you on each download will be the 60% of the total Project Cost. The cost may be changed after the seeing whole Project or after getting downloads.</p></center>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>