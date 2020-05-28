<%@page import="BeanClasses.logincheck"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="su" class="BeanClasses.SignUp"></jsp:useBean>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
su.setEmail(email);

int i=logincheck.login(su, password);
if(i==0)
{
	out.println("Enter the Correct Email");
}
else if(i==1)
{
	session.setAttribute("email", email);
	String name=logincheck.name(email);
	session.setAttribute("name", name);
	String contact=logincheck.contact(email);
	session.setAttribute("contact", contact);
	if(request.getParameter("remember") != null)
            {  
                Cookie c = new Cookie("cookieID", email);
                c.setMaxAge(365*24*60*60);
                response.addCookie(c);
           }
        else
        {
            Cookie c=new Cookie("cookieID", "");
            c.setMaxAge(0);
            response.addCookie(c);
        }
        
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	rd.forward(request, response);
}
else if(i==2)
{
	out.println("Enter the Correct Password");
}
%>
</body>
</html>