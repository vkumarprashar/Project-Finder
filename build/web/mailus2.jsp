
<%@page import="mails.mail"%>
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
String name=request.getParameter("name");
String subject=request.getParameter("useremail");
String message=request.getParameter("message");

mail m=new mail();
int i=m.mail(name, subject, message);
if(i>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("mailus.jsp?id=mail");
	rd.forward(request, response);
}
else
{
	out.println("MAIL NOT SENT");
}
%>
</body>
</html>