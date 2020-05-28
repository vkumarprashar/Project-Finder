<%@page import="BeanClasses.DemandRequest"%>
<%@page import="mails.DemandMail"%>
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
String email=request.getParameter("email");
String tittle=request.getParameter("requesttittle");
String contact=request.getParameter("contact");
String language=request.getParameter("language");
String details=request.getParameter("details");
DemandRequest dr=new DemandRequest();
dr.setName(name);
dr.setEmail(email);
dr.setContact(contact);
dr.setTitle(tittle);
dr.setDetail(details);
dr.setStatus(0);
dr.setTechnology(language);

DemandMail dm=new DemandMail();
int i=dm.mail(name, email, contact, language, details,tittle);
if(i>0)
{
	int j=dm.save(dr);
        if(j>0)
        {
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
        }
}
else
{
	out.println("Demand Mail NOT Successfully Sent");
}
%>
</body>
</html>