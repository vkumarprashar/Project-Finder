<%@page import="BeanClasses.RequestedInsertion"%>
<%@page import="BeanClasses.ExtraInsert"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="BeanClasses.ProjectsAndroid"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email=(String) request.getSession().getAttribute("email");
            String technology=request.getParameter("tech");
            String s=request.getParameter("sno");
            int sno=Integer.parseInt(s);
            System.out.print(email);
            System.out.print(technology);
//            String cost=request.getParameter("cost");
//            System.out.print(cost);
            
            //GETTING DATA From PREVIOUS PAGE
            FileItemFactory factory=new DiskFileItemFactory();
            ServletFileUpload upload=new ServletFileUpload(factory);
            List<FileItem> uploaditems=upload.parseRequest(request);
            Iterator<FileItem> it=uploaditems.iterator();
            File uploadedFile;
            String dirpath="C:/Users/Dell/Desktop/Projects";
            String fields[]=new String[5];
            String fieldsvalue[]=new String[5];
            int i=0;
            while(it.hasNext())
            {
                FileItem item=it.next();
                if(!item.isFormField())
                {
                    System.out.print("FIELD NAME==== "+item.getFieldName());
                    String filename=item.getName();
                    File filepath=new File(dirpath);
                    if(!filepath.exists())
                    {
                        filepath.mkdirs();
                    }
                    String field=item.getFieldName();
                    if(filename.endsWith("pdf"))
                    {
                        uploadedFile =new File(dirpath+"/"+ email+"_"+fieldsvalue[0]+"_"+technology+"_"+field+".pdf");
                        item.write(uploadedFile);
                    }
                    else if(filename.endsWith(".doc"))
                    {
                        uploadedFile =new File(dirpath+"/"+ email+"_"+fieldsvalue[0]+"_"+technology+"_"+field+".doc");
                        item.write(uploadedFile);
                    }
                    else if(filename.endsWith(".zip"))
                    {
                        uploadedFile =new File(dirpath+"/"+ email+"_"+fieldsvalue[0]+"_"+technology+"_"+field+".zip");
                        item.write(uploadedFile);
                    }
                    else if(filename.endsWith(".docx"))
                    {
                        uploadedFile =new File(dirpath+"/"+ email+"_"+fieldsvalue[0]+"_"+technology+"_"+field+".docx");
                        item.write(uploadedFile);
                    }
                    else if(filename.endsWith("ppt"))
                    {
                        uploadedFile =new File(dirpath+"/"+ email+"_"+fieldsvalue[4]+"_"+technology+"_"+field+".ppt");
                        item.write(uploadedFile);
                    }
                    else if(filename.endsWith("pptx"))
                    {
                        uploadedFile =new File(dirpath+"/"+ email+"_"+fieldsvalue[4]+"_"+technology+"_"+field+".pptx");
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
            int cost=RequestedInsertion.getCost(email, fieldsvalue[0]);
            
        
                ExtraInsert pa=new ExtraInsert();
                pa.setEmail(email);
                pa.setName(fieldsvalue[0]);
                pa.setAbout(fieldsvalue[1]);
                System.out.println(cost);
                pa.setCost(cost);
                
                if(fieldsvalue[2]!=null)
                {
                    pa.setReport(1);
                }
                if(fieldsvalue[3]!=null)
                {
                    pa.setSynopsis(1);
                }
                if(fieldsvalue[4]!=null)
                {
                    pa.setPpt(1);
                }
            RequestedInsertion.saveExtra(pa);
            
            String table=technology;
            /*
            if(technology.equals("android"))
            {
                table="ProjectsAndroid";
            }
            else if(technology.equals("ajax"))
            {
                table="ProjectsAjax";
            }
            else if(technology.equals("c"))
            {
                table="ProjectsC";
            }
            else if(technology.equals("c++"))
            {
                table="ProjectsCplus";
            }
            else if(technology.equals("ios"))
            {
                table="ProjectsIOS";
            }
            else if(technology.equals("J2EE"))
            {
                table="ProjectsJ2EE";
            }
            else if(technology.equals("java"))
            {
                table="ProjectsJava";
            }
            else if(technology.equals("kotlin"))
            {
                table="ProjectsKotlin";
            }
            else if(technology.equals("PHP"))
            {
                table="ProjectsPHP";
            }
            else if(technology.equals("Perl"))
            {
                table="ProjectsPerl";
            }
            else if(technology.equals("Python"))
            {
                table="ProjectsPython";
            }
            else if(technology.equals("ruby"))
            {
                table="ProjectsRuby";
            }
            else if(technology.equals("RubyOnRails"))
            {
                table="ProjectsRubyOnRails";
            }
            else if(technology.equals("HTML&CSS"))
            {
                table="ProjectsTemplates";
            }
            else if(technology.equals("Vb.Net"))
            {
                table="ProjectsVbNet";
            }
            */
            /*METHOD TO BE CREATE OF SAVE*/
            
            int j=RequestedInsertion.uploadProject(table, email,sno);
            if(j>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("uploadsuccessfull.jsp");
                rd.forward(request, response);
            }
            else
            {
                out.println("NOT SUCCESSFULL");
            }
        %>
    </body>
</html>
