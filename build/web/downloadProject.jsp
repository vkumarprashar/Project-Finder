<%-- 
    Document   : downloadProject
    Created on : Apr 14, 2018, 8:15:19 PM
    Author     : Dell
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                response.setContentType("application/zip");
		String uploaded=(String)session.getAttribute("uploaded");
                String projectname=(String) session.getAttribute("projectname");
                String technology=(String) session.getAttribute("technology");
                
		String zipFileName = uploaded+"_"+projectname+"_"+technology+"_complete project"+".zip";
		String gurupath = "C:/Users/Dell/Desktop/Projects/";
		
//		String contextPath = getServletContext().getRealPath(File.separator);
		response.setContentType("application/octet-stream");
                String disHeader = ("Attachment; Filename=" + "Complete Project.zip");
                response.setHeader("Content-Disposition", disHeader);
                File fileToDownload = new File(gurupath+zipFileName);
                System.out.print("1");

                OutputStream outt = response.getOutputStream();
                FileInputStream in = new FileInputStream(fileToDownload);
                byte[] buffer = new byte[4096];
                int length;
                while ((length = in.read(buffer)) != -1){
                    outt.write(buffer, 0, length);
                }
                in.close();
                out.flush();
                
        %>
    </body>
</html>
