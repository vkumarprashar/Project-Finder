<%@page import="BeanClasses.ProjectsVbNet"%>
<%@page import="BeanClasses.ProjectsJava"%>
<%@page import="BeanClasses.ProjectsPHP"%>
<%@page import="BeanClasses.ProjectsJ2EE"%>
<%@page import="BeanClasses.ProjectsIOS"%>
<%@page import="BeanClasses.ProjectsCplus"%>
<%@page import="BeanClasses.ProjectsPython"%>
<%@page import="BeanClasses.ProjectsC"%>
<%@page import="BeanClasses.ProjectsRuby"%>
<%@page import="BeanClasses.ProjectsAndroid"%>
<%@page import="java.util.Iterator"%>
<%@page import="BeanClasses.GetProjects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            .view
            {
            width:100%;
            height:250px;
            background: white;
            }	
            th,td{
                border: 2px solid gainsboro;
                width: 25%;
            }
            table th{
                font-size: 22px;
                padding: 5px 10px;
                text-align: center;
            }
            table td{
                font-size: 18px;
                padding: 5px 10px;
            }
            table{
                margin: 2% 0%;
                font-family: sans-serif;
                
            }
	
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
                   <center>    <table>
            <tr>
                <th>Project Name</th>
                <th>Cost</th>
                <th>No. of Downloads</th>
                <th>Download</th>
            </tr>
            <%
            String table=request.getParameter("from");
            Iterator it=GetProjects.listproject(table);
            while(it.hasNext())
            {
                if(table.equals("ProjectsAndroid"))
                {
                    ProjectsAndroid pa=(ProjectsAndroid) it.next();
            %>
                <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
   
            <%
                }
                else if(table.equals("ProjectsRuby"))
                {
                    ProjectsRuby pa=(ProjectsRuby) it.next();
            %>
            <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
            <%    }
                else if(table.equals("ProjectsC"))
                {
                    ProjectsC pa=(ProjectsC) it.next();
            %>
                <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
            <%    }
                else if(table.equals("ProjectsPython"))
                {
                    ProjectsPython pa=(ProjectsPython) it.next();
            %>
                <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
            <%    }
                else if(table.equals("ProjectsCplus"))
                {
                    ProjectsCplus pa=(ProjectsCplus) it.next();
            %>
                <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
            <%    }
                else if(table.equals("ProjectsIOS"))
                {
                    ProjectsIOS pa=(ProjectsIOS) it.next();
            %>
                <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
            <%    }
                else if(table.equals("ProjectsJ2EE"))
                {
                    ProjectsJ2EE pa=(ProjectsJ2EE) it.next();
            %>
                <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
            <%    }
                else if(table.equals("ProjectsPHP"))
                {
                    ProjectsPHP pa=(ProjectsPHP) it.next();
            %>
                <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
            <%    }
            
            else if(table.equals("ProjectsJava"))
                {
                    ProjectsJava pa=(ProjectsJava) it.next();
            %>
                <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
            <%    }
            else if(table.equals("ProjectsVBNet"))
                {
                    ProjectsVbNet pa=(ProjectsVbNet) it.next();
            %>
                <tr>
                    <td><a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"><%=pa.getProjectName()%></a></td>
                    <td><%=pa.getCost()%></td>
                    <td><%=pa.getDownloads()%></td>
                    <td><a href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">Buy Now</a></td>
                </tr>
            <%    
                }
            }
                %>
                       </table>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>