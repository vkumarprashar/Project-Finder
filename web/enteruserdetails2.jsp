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
            String email=(String) request.getSession(false).getAttribute("email");
            UserDetails ud=new UserDetails();
            ud.setEmail(email);
            if(request.getParameter("ajax")!=null)
            {
                ud.setAjax(1);
            }
            if(request.getParameter("android")!=null)
            {
                ud.setAndroid(1);
            }
            if(request.getParameter("c")!=null)
            {
                ud.setC(1);
            }
            if(request.getParameter("cplus")!=null)
            {
                ud.setCplus(1);
            }
            if(request.getParameter("html&css")!=null)
            {
                ud.setHtmlandcss(1);
            }
            if(request.getParameter("ios")!=null)
            {
                ud.setIos(1);
            }
            if(request.getParameter("java")!=null)
            {
                ud.setJava(1);
            }
            if(request.getParameter("j2ee")!=null)
            {
                ud.setJ2ee(1);
            }
            if(request.getParameter("kotlin")!=null)
            {
                ud.setKotlin(1);
            }
            if(request.getParameter("perl")!=null)
            {
                ud.setPerl(1);
            }
            if(request.getParameter("python")!=null)
            {
                ud.setPython(1);
            }
            if(request.getParameter("rubyonrails")!=null)
            {
                ud.setRublyonrails(1);
            }
            if(request.getParameter("ruby")!=null)
            {
                ud.setRuby(1);
            }
            if(request.getParameter("vbnet")!=null)
            {
                ud.setVbnet(1);
            }
            if(request.getParameter("php")!=null)
            {
                ud.setPhp(1);
            }
            if(request.getParameter("enable")!=null)
            {
                ud.setSubscribed(1);
            }
            int i=UserDetailsMethods.insert(ud);
            if(i>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("requestapplication.jsp");
                rd.forward(request, response);
            }
            else
            {
                out.println("NOT SAVED");
            }
        %>
    </body>
</html>
