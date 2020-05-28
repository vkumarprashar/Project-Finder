<%-- 
    Document   : downloadSynopsis
    Created on : Apr 14, 2018, 4:50:53 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
                response.setContentType("application/pdf");
		String uploaded=(String)session.getAttribute("uploaded");
                String projectname=(String) session.getAttribute("projectname");
                String technology=(String) session.getAttribute("technology");
                
		String pdfFileName = uploaded+"_"+projectname+"_"+technology+"_projectsynopsis"+".pdf";
		String gurupath = "C:/Users/Dell/Desktop/Projects/";
		
//		String contextPath = getServletContext().getRealPath(File.separator);
		File pdfFile = new File(gurupath + pdfFileName);

		response.setContentType("application/pdf");
		response.addHeader("Content-Disposition", "attachment; filename=" +"Project Synopsis.pdf");
		response.setContentLength((int) pdfFile.length());

		FileInputStream fileInputStream = new FileInputStream(pdfFile);
		OutputStream responseOutputStream = response.getOutputStream();
		int bytes;
		while ((bytes = fileInputStream.read()) != -1) {
			responseOutputStream.write(bytes);
		}
                
        %>
        
    </body>
</html>
