<%-- 
    Document   : subscribe
    Created on : Mar 29, 2018, 8:07:29 PM
    Author     : Dell
--%>

<%@page import="BeanClasses.subscribe"%>
<%@page import="BeanClasses.UserDetailsMethods"%>
<%@page import="BeanClasses.UserDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email;
            if(session.getAttribute("email")==null)
            {
                email=request.getParameter("email");
                
            }
            else
            {
                email=(String)session.getAttribute("email");
            }
            subscribe s=new subscribe();
            s.setEmail(email);
            int i=UserDetailsMethods.subscrib(s);
            if(i>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
            
        %>
    </body>
</html>
