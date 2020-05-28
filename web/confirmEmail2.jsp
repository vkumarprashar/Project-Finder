<%@page import="BeanClasses.SignUp"%>
<%@page import="java.util.Iterator"%>
<%@page import="BeanClasses.GetDetails"%>
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
	String pid=(String) request.getParameter("pid");
	String email=session.getAttribute("email").toString();
	GetDetails gd=new GetDetails();
	Iterator it=gd.profile(email);
	if(it.hasNext())
	{
		SignUp su=(SignUp) it.next();
		if(su.getPID().equals(pid))
		{
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else
		{
			out.println("Not a Valid PID");
			RequestDispatcher rd=request.getRequestDispatcher("confirmEmail.jsp");
			rd.include(request, response);
		}
	}
%>
</body>
</html>