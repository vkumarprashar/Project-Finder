
<%-- 
    Document   : download2
    Created on : Apr 14, 2018, 3:27:11 PM
    Author     : Dell
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
       <%
           String projectname=(String)session.getAttribute("projectname");
           String ppt=(String)session.getAttribute("pppt");
           String report=(String)session.getAttribute("preport");
           String synopsis=(String)session.getAttribute("psynopsis");
           String project=(String)session.getAttribute("project");
           String uploaded=request.getParameter("uploaded");
           String technology=(String) session.getAttribute("technology");
           session.setAttribute("uploaded", uploaded);
          RequestDispatcher rd=request.getRequestDispatcher("downloadPPT.jsp");
          rd.forward(request, response);
           if(synopsis.equals("yes"))
           {
            %>
            <script>
                var win = window.open("downloadSynopsis.jsp", '_blank');
                win.focus();
            </script>
            <%
           }
           if(report.equals("yes"))
           {
              %>
              <script>
                var win = window.open("downloadReport.jsp", '_blank');
                win.focus();
                </script>
            <%
           }
           if(ppt.equals("yes"))
           {
               %>
                <script>
                var win = window.open("downloadPPT.jsp", '_blank');
                win.focus();
                </script>
                <%
           }
           if(project.equals("yes"))
           {
               %>
               <script>
                var win = window.open("downloadProject.jsp", '_blank');
                win.focus();
                </script>
                <%
           }
//           RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
//           rd.forward(request, response);
       %>
       <script>
            var win = window.open("downloadSuccessful.jsp");
                win.focus();
                
       </script>
       <script>window.close();</script>
       
    </body>
</html>