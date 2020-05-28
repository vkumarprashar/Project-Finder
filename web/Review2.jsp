<%@page import="java.sql.Time"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="BeanClasses.reviewInsert"%>
<%@page import="BeanClasses.reviewBean"%>
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
Date cdate=new Date();
java.sql.Date currentdate=new java.sql.Date(cdate.getTime());

Time time=new Time(cdate.getTime());

String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String message=request.getParameter("review");

reviewBean rb=new reviewBean();
rb.setName(name);
rb.setContact(contact);
rb.setEmail(email);
rb.setMessage(message);
rb.setDate(currentdate);
rb.setTime(time);
int i=reviewInsert.insert(rb);

if(i>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("reviews.jsp?id=support1");
	rd.forward(request, response);
}
else
{
	out.println("Review NOT Saved");
}
%>
</body>
</html>