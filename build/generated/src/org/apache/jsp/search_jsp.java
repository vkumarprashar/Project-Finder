package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Map;
import java.util.List;
import BeanClasses.ProjectsVbNet;
import BeanClasses.ProjectsTemplates;
import BeanClasses.ProjectsRubyOnRails;
import BeanClasses.ProjectsRuby;
import BeanClasses.ProjectsPython;
import BeanClasses.ProjectsPerl;
import BeanClasses.ProjectsPHP;
import BeanClasses.ProjectsKotlin;
import BeanClasses.ProjectsIOS;
import BeanClasses.ProjectsCplus;
import BeanClasses.ProjectsC;
import BeanClasses.ProjectsAjax;
import BeanClasses.ProjectsJ2EE;
import BeanClasses.ProjectsJava;
import BeanClasses.ProjectsAndroid;
import java.util.Iterator;
import BeanClasses.GetProjects;

public final class search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("\t<!--/tags -->\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("\t<meta name=\"keywords\" content=\"Lively Chat Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \r\n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\r\n");
      out.write("\t<script type=\"application/x-javascript\">\r\n");
      out.write("\t\taddEventListener(\"load\", function () {\r\n");
      out.write("\t\t\tsetTimeout(hideURLbar, 0);\r\n");
      out.write("\t\t}, false);\r\n");
      out.write("\r\n");
      out.write("\t\tfunction hideURLbar() {\r\n");
      out.write("\t\t\twindow.scrollTo(0, 1);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<!--//tags -->\r\n");
      out.write("\t<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("\t<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("\r\n");
      out.write("\t<link href=\"css/font-awesome.css\" rel=\"stylesheet\">\r\n");
      out.write("\t<!-- //for bootstrap working -->\r\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800\" rel=\"stylesheet\">\r\n");
      out.write("\t<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'\r\n");
      out.write("\t    rel='stylesheet' type='text/css'>\r\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700\" rel=\"stylesheet\">\r\n");
      out.write("        <style>\r\n");
      out.write("            .first{\r\n");
      out.write("                margin-left: 100px;\r\n");
      out.write("            }\r\n");
      out.write("            .mainproject{\r\n");
      out.write("                margin-left: 80px;\r\n");
      out.write("                width: 80%;\r\n");
      out.write("                margin-top: 50px;\r\n");
      out.write("                border: 1px solid black;\r\n");
      out.write("                display: block;\r\n");
      out.write("            }\r\n");
      out.write("            .pheader{\r\n");
      out.write("                background: blanchedalmond;\r\n");
      out.write("            }\r\n");
      out.write("            .pname{\r\n");
      out.write("                float: left;\r\n");
      out.write("            }\r\n");
      out.write("            .pdownloads{\r\n");
      out.write("                margin-left: 60%;\r\n");
      out.write("            }\r\n");
      out.write("            .pdetails{\r\n");
      out.write("                width: 80%;\r\n");
      out.write("                margin-left: 15%;\r\n");
      out.write("                display: block;\r\n");
      out.write("            }\r\n");
      out.write("            .pmiddle{\r\n");
      out.write("                display: inline-block;\r\n");
      out.write("            }\r\n");
      out.write("            .pfooter{\r\n");
      out.write("                background: #4cae4c;\r\n");
      out.write("                display: inline;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write(" \r\n");
      out.write("    <div class=\"first\">\r\n");
      out.write("        <h2>Search Details</h2>\r\n");
      out.write("        <hr width=\"100%\" >\r\n");

    int and_if=0;
	String search= request.getParameter("search");
        System.out.println(search);
	String table=request.getParameter("technology");
        System.out.println(table);

        if(table.equals("all"))
        {
            List list=GetProjects.searchall(search);
            Iterator it=list.iterator();
   
            while(it.hasNext())
            {
                System.out.print(it.next());
            }
            List list_1 = (List) list.get(0);
            List list_2 = (List) list.get(1);
               
            Iterator itr1 = list_1.iterator();
            Iterator itr2 = list_2.iterator();
   
            while(itr1.hasNext())
            {
                ProjectsPHP php = (ProjectsPHP) itr1.next();
            
                System.out.println(php.getProjectName());
                System.out.println(php.getCost());
            }
            
            while(itr2.hasNext())
            {
                ProjectsRuby ruby = (ProjectsRuby) itr2.next();
            
                System.out.println(ruby.getProjectName());
                System.out.println(ruby.getCost());
                
            }
/*            while(it.hasNext())
            {
                Object obj=it.next();
                ProjectsAndroid pa=(ProjectsAndroid) obj;
                if(pa!=null)
                {
                    out.println("Name= "+ pa.getProjectName());
                    out.println("About ="+ pa.getAboutProject());
                }
                ProjectsAjax paj=(ProjectsAjax) obj;
                if(paj!=null)
                {
                    out.println("Name= "+ paj.getProjectName());
                    out.println("About ="+ paj.getAboutProject());
                }
            }
 */           
        }
        else
        {
        Iterator it=GetProjects.search(search, table);
        if(table.equals("ProjectsAndroid"))
        {
            System.out.println("if");
        while(it.hasNext())
	{
                 and_if=1;
                 System.out.println("while");

            	ProjectsAndroid pa=(ProjectsAndroid) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"mainproject\">\r\n");
      out.write("                            <div class=\"pheader\">\r\n");
      out.write("                                        <h3 class=\"pname\">");
      out.print(pa.getProjectName());
      out.write(" </h3>\r\n");
      out.write("                                        <h3 class=\"pdownloads\">Total Downloads=");
      out.print(pa.getDownloads());
      out.write("</h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            \r\n");
      out.write("                                        <h2>");
      out.print( pa.getAboutProject());
      out.write("</h2>\r\n");
      out.write("                            <div class=\"pmiddle\">\r\n");
      out.write("                                            <h4>Project Report= ");
 if(pa.getProjectReport()==1){out.print("Available");}else{out.print("Not Avialable");}
      out.write("\r\n");
      out.write("                                            Project Synopsis= ");
if(pa.getSynopsis()==1){out.print("Available");}else{out.print("Not Avialable");}
      out.write("\r\n");
      out.write("                                            Project PPT= ");
if(pa.getProjectPPt()==1){out.print("Available");}else{out.print("Not Avialable");}
      out.write("</h4>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"pfooter\">\r\n");
      out.write("                                        <h3 class=\"pcost\">Project Cost= ");
      out.print(pa.getCost());
      out.write("</h3>\r\n");
      out.write("                                        <a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\t\t");

            }
        if(and_if==0)
        {
            System.out.print("Not found");
        }
        }
        else if(table.equals("ProjectsAjax"))
        {
        while(it.hasNext())
	{
            	ProjectsAjax pa=(ProjectsAjax) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsC"))
        {
        while(it.hasNext())
	{
            	ProjectsC pa=(ProjectsC) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsCplus"))
        {
        while(it.hasNext())
	{
            	ProjectsCplus pa=(ProjectsCplus) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsIOS"))
        {
        while(it.hasNext())
	{
            	ProjectsIOS pa=(ProjectsIOS) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsJ2EE"))
        {
        while(it.hasNext())
	{
            	ProjectsJ2EE pa=(ProjectsJ2EE) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsKotlin"))
        {
        while(it.hasNext())
	{
            	ProjectsKotlin pa=(ProjectsKotlin) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsPHP"))
        {
        while(it.hasNext())
	{
            	ProjectsPHP pa=(ProjectsPHP) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsPerl"))
        {
        while(it.hasNext())
	{
            	ProjectsPerl pa=(ProjectsPerl) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsPython"))
        {
        while(it.hasNext())
	{
            	ProjectsPython pa=(ProjectsPython) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsRuby"))
        {
        while(it.hasNext())
	{
            	ProjectsRuby pa=(ProjectsRuby) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsRubyOnRails"))
        {
        while(it.hasNext())
	{
            	ProjectsRubyOnRails pa=(ProjectsRubyOnRails) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsTemplates"))
        {
        while(it.hasNext())
	{
            	ProjectsTemplates pa=(ProjectsTemplates) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getTemplateName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutTemplate());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getTemplateID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else if(table.equals("ProjectsVBNet"))
        {
        while(it.hasNext())
	{
            	ProjectsVbNet pa=(ProjectsVbNet) it.next();
		
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<div>Project Name= ");
      out.print( pa.getProjectName());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Details= ");
      out.print( pa.getAboutProject());
      out.write("</div>\r\n");
      out.write("                                        <div>Project Report= ");
 if(pa.getProjectReport()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Synopsis= ");
if(pa.getSynopsis()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project PPT= ");
if(pa.getProjectPPt()==1){out.println("Available");}else{out.println("Not Avialable");}
      out.write("</div>\r\n");
      out.write("                                        <div>Project Cost= ");
      out.print(pa.getCost());
      out.write("</div>\r\n");
      out.write("                                        <div>No. of Downloads=");
      out.print(pa.getDownloads());
      out.write("</div>\r\n");
      out.write("                                        <div><a href=\"download.jsp?pid=");
      out.print(pa.getProjectID());
      out.write("&name=");
      out.print(table);
      out.write("\">GET PROJECT</a></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

            }
        }
        else
        {
            
      out.write("\r\n");
      out.write("            <h3>SORRY NO PROJECT FOUND</h3>\r\n");
      out.write("            <h5>To Get Notified About the Project</h5><input type=\"submit\" value=\"CLICK HERE\">\r\n");
      out.write("            ");

        }
        }

      out.write("\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
