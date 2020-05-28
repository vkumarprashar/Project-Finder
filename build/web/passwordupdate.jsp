<%@page import="BeanClasses.passwordupdate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=(String)session.getAttribute("email");
String password=request.getParameter("cpassword");
String newpassword=request.getParameter("cnpassword");
int i=passwordupdate.update(email,password,newpassword);
if(i==1)
{
	RequestDispatcher rd=request.getRequestDispatcher("profilepassword.jsp?");
	rd.forward(request, response);
}
else if(i==2)
{
	RequestDispatcher rd=request.getRequestDispatcher("profilepassword.jsp?");
	rd.forward(request, response);
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("profilepassword.jsp?");
	rd.forward(request, response);
}
%>
</body>
</html>