<%@page import="BeanClasses.ProjectsTemplates"%>
<%@page import="BeanClasses.ProjectsVbNet"%>
<%@page import="BeanClasses.ProjectsRubyOnRails"%>
<%@page import="BeanClasses.ProjectsPython"%>
<%@page import="BeanClasses.ProjectsPerl"%>
<%@page import="BeanClasses.ProjectsPHP"%>
<%@page import="BeanClasses.ProjectsKotlin"%>
<%@page import="BeanClasses.ProjectsJava"%>
<%@page import="BeanClasses.ProjectsJ2EE"%>
<%@page import="BeanClasses.ProjectsIOS"%>
<%@page import="BeanClasses.ProjectsCplus"%>
<%@page import="BeanClasses.ProjectsC"%>
<%@page import="BeanClasses.ProjectsRuby"%>
<%@page import="BeanClasses.ProjectsAjax"%>
<%@page import="BeanClasses.ProjectsAndroid"%>
<%@page import="java.util.Iterator"%>
<%@page import="BeanClasses.GetProjects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Download Project !</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            border-bottom: 3px solid #DBDBDB;
        }
        table tr td{
            width: 220px;
            padding-top: 5px;
            padding-left: 15px;
            border-right: 3px solid #DBDBDB;
            border-left: 3px solid #DBDBDB;
        }
        table{
            margin-left: 30%;
            margin-top: 03%;
            margin-bottom: 03%;
            font-size: 20px;
           
        }
        table th{
            text-align: center;
            border-right: 3px solid #DBDBDB;
            border-left: 3px solid #DBDBDB;
        }
        
    </style>
    
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
        <table>
            <tr id="main">
                <th>Items Details</th>
                <th>Select Items</th>
                <th>Price</th>
            </tr>
        <%
            String pid=(String)request.getParameter("pid");
            String name=(String) request.getParameter("name");
            int Pid=Integer.parseInt(pid);
            Iterator it=GetProjects.detail(name, Pid);
            if(it.hasNext())
            {
                if(name.equals("ProjectsAndroid"))
                {
                    ProjectsAndroid pa=(ProjectsAndroid) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsAndroid");
                    session.setAttribute("project", "yes");
                    
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsAjax"))
                {
                    ProjectsAjax pa=(ProjectsAjax) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsAjax");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <%
                }
                else if(name.equals("ProjectsC"))
                {
                    ProjectsC pa=(ProjectsC) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsC");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsCplus"))
                {
                    ProjectsCplus pa=(ProjectsCplus) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsCplus");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsIOS"))
                {
                    ProjectsIOS pa=(ProjectsIOS) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsIOS");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsJ2EE"))
                {
                    ProjectsJ2EE pa=(ProjectsJ2EE) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsJ2EE");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"   href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsJava"))
                {
                    ProjectsJava pa=(ProjectsJava) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsJava");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsKotlin"))
                {
                    ProjectsKotlin pa=(ProjectsKotlin) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsKotlin");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsPHP"))
                {
                    ProjectsPHP pa=(ProjectsPHP) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsPHP");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsPerl"))
                {
                    ProjectsPerl pa=(ProjectsPerl) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsPerl");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsPython"))
                {
                    ProjectsPython pa=(ProjectsPython) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsPython");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsRuby"))
                {
                    ProjectsRuby pa=(ProjectsRuby) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsRuby");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsRubyOnRails"))
                {
                    ProjectsRubyOnRails pa=(ProjectsRubyOnRails) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsRubyOnRails");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsTemplates"))
                {
                    ProjectsTemplates pa=(ProjectsTemplates) it.next();
                    session.setAttribute("projectname", pa.getTemplateName());
                    session.setAttribute("technology", "ProjectsTemplates");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getTemplateName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
                else if(name.equals("ProjectsVbNet"))
                {
                    ProjectsVbNet pa=(ProjectsVbNet) it.next();
                    session.setAttribute("projectname", pa.getProjectName());
                    session.setAttribute("technology", "ProjectsVbNet");
                    session.setAttribute("project", "yes");
                %>
                <tr style="font-weight: bold;">
                    <td name="pname"><%=pa.getProjectName()%></td>
                    <td>----- ></td>
                    <td> Rs. <%=pa.getCost()%></td>
                </tr>
                <tr >
                    <td>Project Synopsis</td>
                    <%if(pa.getSynopsis()==1){%>
                    <td><input type="checkbox" id="psynopsis" name="psynopsis" onclick="val()" value="200" ></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project Report</td>
                    <%if(pa.getProjectReport()==1){%>
                    <td><input type="checkbox" id="preport" name="preport" onclick="val2()" value="400"></td>
                    <td><%out.println("400");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td>Project PPT</td>
                    <%if(pa.getProjectPPt()==1){%>
                    <td><input type="checkbox" id="pppt" name="pppt" onclick="val3()" value="200"></td>
                    <td><%out.println("200");}else
                    {%></td>
                    
                    <td></td>
                    <td>Not available</td>
                    <%
                    }
                    %>
                </tr>
                <tr>
                    <td></td>
                    <td style="font-weight: bold; font-size: 20px; padding-top: 15px; ">Total</td>
                    <td id="total" style="font-weight: bold; font-size: 20px; padding-top: 15px;  "><%=pa.getCost()%></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><a style="font-size: 20px; font-weight: bold;"  href="downloadoptions.jsp?uploaded=<%=pa.getUploadedBy()%>">Check Out</a></td>
                </tr>
                <% 
                }
            }
        %>
        </table>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>

    <script>
        function val()
        {
            var a=document.getElementById('psynopsis').value;
            var checkbox=document.getElementById('psynopsis');
            if(checkbox.checked==true)
            {
                <%session.setAttribute("psynopsis","yes");%>
                
                var b=document.getElementById('total').textContent;
                var c=parseInt(a)+parseInt(b);
                
                document.getElementById('total').innerHTML=c;
                
            }
            else
            {
                <%session.setAttribute("psynopsis","no");%>
                var b=document.getElementById('total').textContent;
                var c=parseInt(b)-parseInt(a);
                
                document.getElementById('total').innerHTML=c;
            }    
        }
        
        function val2()
        {
            var a=document.getElementById('preport').value;
            var checkbox=document.getElementById('preport');
            if(checkbox.checked==true)
            {
                
                var b=document.getElementById('total').textContent;
                var c=parseInt(a)+parseInt(b);
                
                document.getElementById('total').innerHTML=c;
                <%session.setAttribute("preport","yes");%>
            }
            else
            {
                <%session.setAttribute("preport","no");%>
                var b=document.getElementById('total').textContent;
                var c=parseInt(b)-parseInt(a);
                
                document.getElementById('total').innerHTML=c;
            }    
        }
        
        function val3()
        {
            var a=document.getElementById('pppt').value;
            var checkbox=document.getElementById('pppt');
            if(checkbox.checked==true)
            {
                var b=document.getElementById('total').textContent;
                var c=parseInt(a)+parseInt(b);
                
                document.getElementById('total').innerHTML=c;
                <%session.setAttribute("pppt","yes");%>
            }
            else
            {
                <%session.setAttribute("pppt","no");%>
                var b=document.getElementById('total').textContent;
                var c=parseInt(b)-parseInt(a);
                
                document.getElementById('total').innerHTML=c;
            }    
        }
    </script>
</html>
