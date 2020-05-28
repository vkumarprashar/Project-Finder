<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="BeanClasses.ProjectsVbNet"%>
<%@page import="BeanClasses.ProjectsTemplates"%>
<%@page import="BeanClasses.ProjectsRubyOnRails"%>
<%@page import="BeanClasses.ProjectsRuby"%>
<%@page import="BeanClasses.ProjectsPython"%>
<%@page import="BeanClasses.ProjectsPerl"%>
<%@page import="BeanClasses.ProjectsPHP"%>
<%@page import="BeanClasses.ProjectsKotlin"%>
<%@page import="BeanClasses.ProjectsIOS"%>
<%@page import="BeanClasses.ProjectsCplus"%>
<%@page import="BeanClasses.ProjectsC"%>
<%@page import="BeanClasses.ProjectsAjax"%>
<%@page import="BeanClasses.ProjectsJ2EE"%>
<%@page import="BeanClasses.ProjectsJava"%>
<%@page import="BeanClasses.ProjectsAndroid"%>
<%@page import="java.util.Iterator"%>
<%@page import="BeanClasses.GetProjects"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projects Search ~Project Finder</title>
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
            .mainproject{
                border: 1px solid #c0c0c0;
                margin-bottom: 15px;
                width: 60%; 
                height: auto; 
                padding: 5px 20px;
                margin-left: 20%;
            }
            .hello{
                background: #f0f0f0;
                width: 50%;
                color: white;
                font-size: 24px;
                text-align: center;
                font-weight: 600;
                text-transform: uppercase;
                margin: 2% 25%;
                border: 1px solid #36a1f3;
                font-family: Times New Roman;
            }
            .hello:hover{
                background: white;
                width: 50%;
                color: #36a1f3;
                font-size: 24px;
                text-align: center;
                font-weight: 600;
                text-transform: uppercase;
                margin: 2% 25%;
                border: 1px solid #36a1f3;
                
            }
            .pheader{
                font-weight: bold;
                font-size: 24px;
                font-family: Times New Roman;
            }
            .pmiddle{
                font-size: 20px;
                font-family: Times New Roman;
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
 
    <div class="first">
        <center><h1>Search Results</h1>
        <hr width="70%" ></center>
        
<%
    int and_if=0;
	String search= request.getParameter("search");
        System.out.println(search);
	String table=request.getParameter("technology");
        System.out.println(table);

        if(table.equals("all"))
        {
            List list=GetProjects.searchall(search);
            Iterator it=list.iterator();
            
            
            List list_1 = (List) list.get(0);
            List list_2 = (List) list.get(1);
            List list_3 = (List) list.get(2);
            List list_4 = (List) list.get(3);
            List list_5 = (List) list.get(4);
            List list_6 = (List) list.get(5);
            List list_7 = (List) list.get(6);
            List list_8 = (List) list.get(7);
            List list_9 = (List) list.get(8);
            List list_10 = (List) list.get(9);
            List list_11 = (List) list.get(10);
            List list_12 = (List) list.get(11);
            List list_13 = (List) list.get(12);
            List list_14 = (List) list.get(13);
            
            if(list_1.isEmpty()&&list_2.isEmpty()&&list_3.isEmpty()&&list_4.isEmpty()&&list_5.isEmpty()&&list_6.isEmpty()&&list_7.isEmpty()&&list_8.isEmpty()&&list_9.isEmpty()&&list_10.isEmpty()&&list_11.isEmpty()&&list_12.isEmpty()&&list_13.isEmpty()&&list_14.isEmpty())
            {
                %>
                <div>No Project Founds</div>
                <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
                <%
            }
            else
            {
                %>
                <center>    <table>
            <tr>
                <th>Project Name</th>
                <th>Technology</th>
                <th>Cost</th>
                <th>Download</th>
            </tr>
                <%
            }
            
            Iterator itr1 = list_1.iterator();
            Iterator itr2 = list_2.iterator();
            Iterator itr3 = list_3.iterator();
            Iterator itr4 = list_4.iterator();
            Iterator itr5 = list_5.iterator();
            Iterator itr6 = list_6.iterator();
            Iterator itr7 = list_7.iterator();
            Iterator itr8 = list_8.iterator();
            Iterator itr9 = list_9.iterator();
            Iterator itr10 = list_10.iterator();
            Iterator itr11 = list_11.iterator();
            Iterator itr12 = list_12.iterator();
            Iterator itr13 = list_13.iterator();
            Iterator itr14 = list_14.iterator();
            
            
            while(itr1.hasNext())
            {
                ProjectsAjax ajax = (ProjectsAjax) itr1.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsAjax&pid=<%=ajax.getProjectID()%>"><%=ajax.getProjectName()%></a></td>
                    <td><h4>AJAX</h4></td>
                    <td><%=ajax.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=ajax.getProjectID()%>&name=ProjectsAjax">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr2.hasNext())
            {
                ProjectsAndroid android = (ProjectsAndroid) itr2.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsAndroid&pid=<%=android.getProjectID()%>"><%=android.getProjectName()%></a></td>
                    <td><h4>Android</h4></td>
                    <td><%=android.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=android.getProjectID()%>&name=ProjectsAndroid">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr3.hasNext())
            {
                ProjectsC c = (ProjectsC) itr3.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsC&pid=<%=c.getProjectID()%>"><%=c.getProjectName()%></a></td>
                    <td><h4>C</h4></td>
                    <td><%=c.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=c.getProjectID()%>&name=ProjectsC">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr4.hasNext())
            {
                ProjectsCplus cplus = (ProjectsCplus) itr4.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsCplus&pid=<%=cplus.getProjectID()%>"><%=cplus.getProjectName()%></a></td>
                    <td><h4>C ++</h4></td>
                    <td><%=cplus.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=cplus.getProjectID()%>&name=ProjectsCplus">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr5.hasNext())
            {
                ProjectsIOS ios = (ProjectsIOS) itr5.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsIOS&pid=<%=ios.getProjectID()%>"><%=ios.getProjectName()%></a></td>
                    <td><h4>IOS</h4></td>
                    <td><%=ios.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=ios.getProjectID()%>&name=ProjectsIOS">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr6.hasNext())
            {
                ProjectsJ2EE jee = (ProjectsJ2EE) itr6.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsJ2EE&pid=<%=jee.getProjectID()%>"><%=jee.getProjectName()%></a></td>
                    <td><h4>Java EE</h4></td>
                    <td><%=jee.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=jee.getProjectID()%>&name=ProjectsJ2EE">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr7.hasNext())
            {
                ProjectsJava java = (ProjectsJava) itr7.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsJava&pid=<%=java.getProjectID()%>"><%=java.getProjectName()%></a></td>
                    <td><h4>Java SE(Core Java)</h4></td>
                    <td><%=java.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=java.getProjectID()%>&name=ProjectsJava">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr8.hasNext())
            {
                ProjectsKotlin kotlin = (ProjectsKotlin) itr8.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsKotlin&pid=<%=kotlin.getProjectID()%>"><%=kotlin.getProjectName()%></a></td>
                    <td><h4>Kotlin</h4></td>
                    <td><%=kotlin.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=kotlin.getProjectID()%>&name=ProjectsKotlin">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr9.hasNext())
            {
                ProjectsPHP php = (ProjectsPHP) itr9.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsPHP&pid=<%=php.getProjectID()%>"><%=php.getProjectName()%></a></td>
                    <td><h4>PHP</h4></td>
                    <td><%=php.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=php.getProjectID()%>&name=ProjectsPHP">Buy Now</a></td>
                </tr>
                <%
                
            }
            
            while(itr10.hasNext())
            {
                ProjectsPerl perl = (ProjectsPerl) itr10.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsPerl&pid=<%=perl.getProjectID()%>"><%=perl.getProjectName()%></a></td>
                    <td><h4>Perl</h4></td>
                    <td><%=perl.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=perl.getProjectID()%>&name=ProjectsPerl">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr11.hasNext())
            {
                ProjectsPython python = (ProjectsPython) itr11.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsPython&pid=<%=python.getProjectID()%>"><%=python.getProjectName()%></a></td>
                    <td><h4>Python</h4></td>
                    <td><%=python.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=python.getProjectID()%>&name=ProjectsPython">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr12.hasNext())
            {
                ProjectsRuby ruby = (ProjectsRuby) itr12.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsRuby&pid=<%=ruby.getProjectID()%>"><%=ruby.getProjectName()%></a></td>
                    <td><h4>Ruby</h4></td>
                    <td><%=ruby.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=ruby.getProjectID()%>&name=ProjectsRuby">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr13.hasNext())
            {
                ProjectsRubyOnRails ror = (ProjectsRubyOnRails) itr13.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsRubyOnRails&pid=<%=ror.getProjectID()%>"><%=ror.getProjectName()%></a></td>
                    <td><h4>Ruby On Rails</h4></td>
                    <td><%=ror.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=ror.getProjectID()%>&name=ProjectsRubyOnRails">Buy Now</a></td>
                </tr>
                <%
            }
            
            while(itr14.hasNext())
            {
                ProjectsVbNet vb = (ProjectsVbNet) itr14.next();
                %>
                <tr>
                    <td><a href="singleproject.jsp?id=ProjectsVbNet&pid=<%=vb.getProjectID()%>"><%=vb.getProjectName()%></a></td>
                    <td><h4>VB .Net</h4></td>
                    <td><%=vb.getCost()%></td>
                    <td><a href="download.jsp?pid=<%=vb.getProjectID()%>&name=ProjectsVbNet">Buy Now</a></td>
                </tr>
                <%
            }
            %>
                    </table>    </center>
            <%
            
/*            while(it.hasNext())
            {
                Object obj=it.next();
                ProjectsAndroid pa=(ProjectsAndroid) obj;
                if(pa!=null)
                {
                    out.println("Name= "+ pa.getProjectName());
                    out.println("About ="+ pa.getAboutProject());
                }
                ProjectsAjax paj=(ProjectsAjax) obj;
                if(paj!=null)
                {
                    out.println("Name= "+ paj.getProjectName());
                    out.println("About ="+ paj.getAboutProject());
                }
            }
 */           
        }
        else
        {
        Iterator it=GetProjects.search(search, table);
        if(table.equals("ProjectsAndroid"))
        {
        while(it.hasNext())
	{
                 and_if=1;
                 

            	ProjectsAndroid pa=(ProjectsAndroid) it.next();
		
		%>
                
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
                <p style="font-size: 22px; font-weight: bold;">No Project Founds</p>
                You can request for this project on Demand
                <a href="">Click Here to Request</a>
                
            <%
        }
        }
        else if(table.equals("ProjectsAjax"))
        {
        while(it.hasNext())
	{   
            and_if=1;
            	ProjectsAjax pa=(ProjectsAjax) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsC"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsC pa=(ProjectsC) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsCplus"))
        {
        while(it.hasNext())
	{
            and_if=1;
            
            	ProjectsCplus pa=(ProjectsCplus) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsIOS"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsIOS pa=(ProjectsIOS) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsJ2EE"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsJ2EE pa=(ProjectsJ2EE) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsKotlin"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsKotlin pa=(ProjectsKotlin) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsPHP"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsPHP pa=(ProjectsPHP) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsPerl"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsPerl pa=(ProjectsPerl) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsPython"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsPython pa=(ProjectsPython) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsRuby"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsRuby pa=(ProjectsRuby) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsRubyOnRails"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsRubyOnRails pa=(ProjectsRubyOnRails) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsTemplates"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsTemplates pa=(ProjectsTemplates) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getTemplateID()%>"class="pname"><%=pa.getTemplateName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutTemplate()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getTemplateID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsVBNet"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsVbNet pa=(ProjectsVbNet) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        else if(table.equals("ProjectsJava"))
        {
        while(it.hasNext())
	{
            and_if=1;
            	ProjectsJava pa=(ProjectsJava) it.next();
		
		%>
			<div class="mainproject">
                            <div class="pheader">
                                <a href="singleproject.jsp?id=<%=table%>&pid=<%=pa.getProjectID()%>"class="pname"><%=pa.getProjectName()%> </a>
                            </div>
                            <div class="pmiddle">
                                <p><%= pa.getAboutProject()%></p>
                            </div>
                            <div class="pfooter">
                                <button class="hello"><a  href="download.jsp?pid=<%=pa.getProjectID()%>&name=<%=table%>">GET PROJECT</a></button>
                            </div>
                        </div>
		<%
            }
        if(and_if==0)
        {
            %>
            <div>No Project Founds</div>
            <div>You can request for this project on Demand<br><a href="">Click Here to Request</a></div>
            <%
        }
        }
        }
%>

    </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>