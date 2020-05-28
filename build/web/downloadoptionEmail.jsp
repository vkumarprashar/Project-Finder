<%-- 
    Document   : downloadoptionEmail
    Created on : Apr 19, 2018, 7:49:15 PM
    Author     : Dell
--%>

<%@page import="mails.SendProject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String sendemail=request.getParameter("email");
            String ppt=(String)session.getAttribute("pppt");
            String report=(String)session.getAttribute("preport");
            String synopsis=(String)session.getAttribute("psynopsis");
            String uploaded=request.getParameter("upload");
            String technology=(String) session.getAttribute("technology");
            String pname=(String) session.getAttribute("projectname");
            int i=SendProject.send(sendemail, pname, uploaded, technology, ppt, synopsis, report);
            if(i>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("downloadSuccessful.jsp");
                rd.forward(request, response);
            }
        %>
    </body>
</html>
