<%-- 
    Document   : downloadPPT
    Created on : Apr 14, 2018, 8:12:26 PM
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
        response.setContentType("application/ppt");
		String uploaded=(String)session.getAttribute("uploaded");
                String projectname=(String) session.getAttribute("projectname");
                String technology=(String) session.getAttribute("technology");
                
		String pdfFileName = uploaded+"_"+projectname+"_"+technology+"_pptc"+".pptx";
		String gurupath = "C:/Users/Dell/Desktop/Projects/";
		
//		String contextPath = getServletContext().getRealPath(File.separator);
		File pdfFile = new File(gurupath + pdfFileName);

		response.setContentType("application/ppt");
		response.addHeader("Content-Disposition", "attachment; filename=" + pdfFileName);
		response.setContentLength((int) pdfFile.length());

		FileInputStream fileInputStream = new FileInputStream(pdfFile);
		OutputStream responseOutputStream = response.getOutputStream();
		int bytes;
		while ((bytes = fileInputStream.read()) != -1) {
			responseOutputStream.write(bytes);
		}
                responseOutputStream.close();
                fileInputStream.close();
        %>
       
    </body>
</html>
