<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="mails.SignupConfirmation"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="BeanClasses.Signup_Insert"%>
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
String name=(String)request.getParameter("fullname");
String email=(String) request.getParameter("signupemail");
String contact=(String) request.getParameter("contact");
String gender=(String) request.getParameter("gender");
String password=(String) request.getParameter("cnpassword");
String question=(String) request.getParameter("securityquestion");
String answer=(String) request.getParameter("answer");
su.setContact(contact);
su.setEmail(email);
su.setFullname(name);
su.setPassword(password);
su.setGender(gender);
su.setVerified(0);
su.setSecurityques(question);
su.setSecurityans(answer);
Calendar cal= Calendar.getInstance();
su.setSdate(cal.getTime());

int length=name.length();

char n[]=name.toCharArray();
char n1[] = new char[3];
for(int i=0;i<3;i++)
{

	n1[i]=n[i];
	n1[i]=(char)(n[i]-32);
	System.out.println(n1[i]);
}

int b=contact.length();
char a1[]=contact.toCharArray();
char c[]=new char[3];
int s=0;
for(int i=b-3;i<b;i++)
{
	c[s]=a1[i];
	System.out.println(c[s]);
	s++;
}
String con;
con=String.valueOf(n1);
		String com=String.valueOf(c);
String pID=con+com;
		System.out.println(pID);

su.setPID(pID);

int i=Signup_Insert.signup(su);


if(i>0)
{
	SignupConfirmation.sendmail(name, pID, email);
	session.setAttribute("email", email);
	session.setAttribute("name", name);
	session.setAttribute("contact", contact);
	
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	rd.forward(request, response);
}
else
{
	out.println("ERRORR");
}
%>
</body>
</html>