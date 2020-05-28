<%@page import="BeanClasses.ProjectsJava"%>
<%@page import="BeanClasses.ProjectsTemplates"%>
<%@page import="BeanClasses.ProjectsVbNet"%>
<%@page import="BeanClasses.ProjectsRubyOnRails"%>
<%@page import="BeanClasses.ProjectsRuby"%>
<%@page import="BeanClasses.ProjectsPython"%>
<%@page import="BeanClasses.ProjectsPerl"%>
<%@page import="BeanClasses.ProjectsPHP"%>
<%@page import="BeanClasses.ProjectsKotlin"%>
<%@page import="BeanClasses.ProjectsJ2EE"%>
<%@page import="BeanClasses.ProjectsIOS"%>
<%@page import="BeanClasses.ProjectsCplus"%>
<%@page import="BeanClasses.ProjectsC"%>
<%@page import="BeanClasses.ProjectsAjax"%>
<%@page import="BeanClasses.ProjectsAndroid"%>
<%@page import="BeanClasses.GetProjects"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project</title>
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
        .table{
            
        }
          .p_name
    {
        font-size: 22px;
        font-family: serif;
        text-align: center;
    }
    .p_detail
    {
          font-size: 20px;
        font-family: serif;
        text-align: justify;
    }
    </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <%
	String table= (String)request.getParameter("id");
	String pid= (String)request.getParameter("pid");
        int Pid=Integer.parseInt(pid);
        Iterator it=GetProjects.detail(table, Pid);
	
       while(it.hasNext())
	{
            if(table.equals("ProjectsAndroid"))
            {
                ProjectsAndroid pa=(ProjectsAndroid) it.next();

                %>
               <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsAjax"))
            {
                ProjectsAjax pa=(ProjectsAjax) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>
                <%      
            }
            else if(table.equals("ProjectsC"))
            {
                ProjectsC pa=(ProjectsC) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsCplus"))
            {
                ProjectsCplus pa=(ProjectsCplus) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsIOS"))
            {
                ProjectsIOS pa=(ProjectsIOS) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsJ2EE"))
            {
                ProjectsJ2EE pa=(ProjectsJ2EE) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsKotlin"))
            {
                ProjectsKotlin pa=(ProjectsKotlin) it.next();

                %>
<div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsPHP"))
            {
                ProjectsPHP pa=(ProjectsPHP) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsPerl"))
            {
                ProjectsPerl pa=(ProjectsPerl) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsPython"))
            {
                ProjectsPython pa=(ProjectsPython) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsRuby"))
            {
                ProjectsRuby pa=(ProjectsRuby) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsRubyOnRails"))
            {
                ProjectsRubyOnRails pa=(ProjectsRubyOnRails) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsTemplates"))
            {
                ProjectsTemplates pa=(ProjectsTemplates) it.next();
		
		%>
		<div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getTemplateName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutTemplate()%></p></span>   
                        </td>
                    </tr><br />
                    <tr class="p_cost">
                            <td>
                                 <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                            </td>
                           <td>
                               <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                           </td>
                    </tr><br />
                   <tr class="p_downloads">
                            <td>
                                <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                            </td>
                           <td>
                               <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                           </td>
                    </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>
		<%
            }
            else if(table.equals("ProjectsVbNet"))
            {
                ProjectsVbNet pa=(ProjectsVbNet) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
            else if(table.equals("ProjectsJava"))
            {
                ProjectsJava pa=(ProjectsJava) it.next();

                %>
                <div style="width: 70%; margin-left: 15%; margin-right: 15%; margin-bottom: 50px; border: 2px solid #cccaca;">
                   <table  width="100%" cellspacing="10" cellpadding="10" style="margin-top: -70px;" >
                    <tr>
                        <td class="p_name" colspan="2">
                            <b><u>  <%= pa.getProjectName()%></u></b>
                        </td>
                    </tr>
                    <tr class="p_detail" >
                        
                        <td class="detail" colspan="2">
                            <span style="text-align: center;"><p>  <%= pa.getAboutProject()%></p></span>   
                        </td>
                    </tr>
                    <tr class="p_items" style="font-family: Times New Roman;">
                        <td >
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;"> Project Synopsis:</p>
                        </td>
                        <td >
                            <span style="margin-left: -300px;"><%if(pa.getSynopsis()==1){%><span class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items1" style="font-family: Times New Roman; ">
                        <td>
                            <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Report:</p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"> <% if(pa.getProjectReport()==1){%><span style="height: 10px; width: 10px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%></span>
                        </td>
                    </tr><br />
                    <tr class="p_items2" style="font-family: Times New Roman;">
                        <td>
                           <p style="font-size: 20px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project PPT: </p>
                        </td>
                        <td>
                            <span style="margin-left: -300px;"><%if(pa.getProjectPPt()==1){%><span style="margin-left: -300px;" class="fa fa-check-square"></span><%}else{out.println("Not Avialable");}%>
                        </td>
                    </tr><br />
                         <tr class="p_cost">
                                 <td>
                                      <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">Project Cost:</p>
                                 </td>
                                <td>
                                    <span style="margin-left: -300px; font-weight: bold; font-size: 22px; font-family: Times New Roman;"><%=pa.getCost()%></span>
                                </td>
                         </tr><br />
                        <tr class="p_downloads">
                                 <td>
                                     <p style="font-size: 22px; font-weight:bold; font-family: Times New Roman; margin-left: 350px;">No. Of Downloads:</p>
                                 </td>
                                <td>
                                    <span><b style="margin-left: -300px; font-family: Times New Roman; font-size: 22px;"><%=pa.getDownloads()%></b></span>
                                </td>
                         </tr>
                    <tr class="p_download">
                        <td colspan="2" align="center">
                            <a href="download.jsp?pid=<%=pid%>&name=<%=table%>">
                                <img src="images/download.gif" alt="Download" width="200px;" height="100px;" /></a>
                        </td>
                    </tr>
                        
            </table>
         </div>    
    
            <div class="clear">
            </div>

                <%      
            }
	}
%>
	
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>