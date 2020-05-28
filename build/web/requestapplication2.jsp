<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="BeanClasses.RequestedInsertion"%>
<%@page import="BeanClasses.RequestedApplications"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
        session = request.getSession(false);
	String email=(String)session.getAttribute("email");
        FileItemFactory factory=new DiskFileItemFactory();
        ServletFileUpload upload=new ServletFileUpload( factory );
        List<FileItem> uploaditems=upload.parseRequest(request);
        Iterator<FileItem> it=uploaditems.iterator();
        File uploadedFile;
        String dirPath="C:/Users/Dell/Desktop/Requested Projects";
        String fields[]=new String[3];
        String fieldsvalue[]=new String[3];
        int i=0;
        while(it.hasNext())
        {
            FileItem item=it.next();
            if(!item.isFormField())
            {
                String filename=item.getName();
                out.print("Fielf name====="+filename);
                File filepath=new File(dirPath);
                if(!filepath.exists())
                {
                    filepath.mkdirs();
                }
                if(filename.endsWith("pdf"))
                {
                uploadedFile =new File(dirPath+"/"+ email+"_"+fieldsvalue[0]+"_"+fieldsvalue[1]+".pdf");
                item.write(uploadedFile);
                }
                else if(filename.endsWith(".doc"))
                {
                uploadedFile =new File(dirPath+"/"+ email+"_"+fieldsvalue[0]+"_"+fieldsvalue[1]+".doc");
                item.write(uploadedFile);    
                }
                else
                {
                    uploadedFile =new File(dirPath+"/"+ email+"_"+fieldsvalue[0]+"_"+fieldsvalue[1]+".docx");
                item.write(uploadedFile);
                }
            }
            else
            {
                fields[i]=item.getFieldName();
                
                fieldsvalue[i]=item.getString();
                
                i++;
            }
        }
//        out.println("OTHER FN 1==="+ fields[0]);
//        out.println("OTHER FV 1===="+ fieldsvalue[0]);
//        
//        out.println("OTHER FN 2==="+ fields[1]);
//        out.println("OTHER FV 2===="+ fieldsvalue[1]);
//        
//        out.println("OTHER FN 3==="+ fields[2]);
//        System.out.println("OTHER FV 3===="+ fieldsvalue[2]);
        
        Date date=new Date();
	Timestamp time=new Timestamp(date.getTime());
	RequestedApplications ra=new RequestedApplications();
	
	
        
	//MultipartRequest mr = new MultipartRequest(request, "C:/Users/Dell/Desktop/JAVA/Basic");
        
	
	ra.setProjectname(fieldsvalue[0]);
	ra.setTechnology(fieldsvalue[1]);
	ra.setAbout(fieldsvalue[2]);
	ra.setTime(time);
	ra.setStatus(0);
//        Set s=new HashSet();
//                s.add(ra);
        i=RequestedInsertion.insert(ra,email);
	if(i>0)
	{
		RequestDispatcher rd=request.getRequestDispatcher("requestapplication.jsp?id=demand");
		rd.forward(request, response);
	}
	else
	{
		out.println("Request Application Failed");
	}
                
%>
</body>
</html>