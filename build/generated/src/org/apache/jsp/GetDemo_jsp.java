package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class GetDemo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Get Demo via Skype</title>\n");
      out.write("        <!--/tags -->\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\t<meta name=\"keywords\" content=\"Project Finder\" />\n");
      out.write("\t<script type=\"application/x-javascript\">\n");
      out.write("\t\taddEventListener(\"load\", function () {\n");
      out.write("\t\t\tsetTimeout(hideURLbar, 0);\n");
      out.write("\t\t}, false);\n");
      out.write("\n");
      out.write("\t\tfunction hideURLbar() {\n");
      out.write("\t\t\twindow.scrollTo(0, 1);\n");
      out.write("\t\t}\n");
      out.write("\t</script>\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("\t<!--//tags -->\n");
      out.write("\t<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("\t<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("\t\n");
      out.write("\t<link href=\"css/font-awesome.css\" rel=\"stylesheet\">\n");
      out.write("\t<!-- //for bootstrap working -->\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800\" rel=\"stylesheet\">\n");
      out.write("\t<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'\n");
      out.write("\t    rel='stylesheet' type='text/css'>\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700\" rel=\"stylesheet\">\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class='main'>\n");
      out.write("            <h2>Fill the Details to get a Demo.</h2>\n");
      out.write("            <form>\n");
      out.write("                <label for=\"skype\">Skype Username</label>\n");
      out.write("                <input type=\"text\" id=\"skype\" name=\"skypeusername\">\n");
      out.write("                <label for=\"purpose\">Purpose of the Demo</label>\n");
      out.write("                <select id=\"purpose\" name=\"purposeofdemo\">\n");
      out.write("                    <option value=\"For the Installation of Project\">For the Installation of Project</option>\n");
      out.write("                    <option value=\"For the Working of Project\">For the Working of Project</option>\n");
      out.write("                    <option value=\"Both\">Both</option>\n");
      out.write("                </select>\n");
      out.write("                <label for=\"date\">Date</label>\n");
      out.write("                <input type=\"date\" id=\"date\" name=\"somedate\" on>\n");
      out.write("                <label for=\"time\">Timings</label>\n");
      out.write("                ");

                java.util.Date cdate=new java.util.Date();
                int hour=cdate.getHours();
                int date=cdate.getDate();
                System.out.print("TIME"+ cdate.getHours());
                System.out.print("DATE"+ date);
                
      out.write("\n");
      out.write("                <select id=\"time\" name=\"timings\">\n");
      out.write("                    \n");
      out.write("                    <option value=\"09:00 a.m\" id=\"1st\">09:00 a.m</option>\n");
      out.write("                    <option value=\"10:00 a.m\">10:00 a.m</option>\n");
      out.write("                    <option value=\"11:00 a.m\">11:00 a.m</option>\n");
      out.write("                    <option value=\"12:00 p.m\">12:00 p.m</option>\n");
      out.write("                    <option value=\"01:00 p.m\">01:00 p.m</option>\n");
      out.write("                    <option value=\"02:00 p.m\">02:00 p.m</option>\n");
      out.write("                    <option value=\"03:00 p.m\">03:00 p.m</option>\n");
      out.write("                    <option value=\"04:00 p.m\">04:00 p.m</option>\n");
      out.write("                    <option value=\"05:00 p.m\">05:00 p.m</option>\n");
      out.write("                    <option value=\"06:00 p.m\">06:00 p.m</option>\n");
      out.write("                    <option value=\"07:00 p.m\">07:00 p.m</option>\n");
      out.write("                    <option value=\"08:00 p.m\">08:00 p.m</option>\n");
      out.write("                    <option value=\"09:00 p.m\">09:00 p.m</option>\n");
      out.write("                    <option value=\"10:00 p.m\">10:00 p.m</option>\n");
      out.write("                    <option value=\"11:00 p.m\">11:00 p.m</option>\n");
      out.write("                </select>\n");
      out.write("                <input type=\"checkbox\" onchange=\"document.getElementById('enter').disabled=!this.checked;\" id=\"t&c\"><span>I have agreed to the <a href=\"\">Terms & Conditions</a></span>\n");
      out.write("                <input type=\"submit\" value=\"Submit\" disabled=\"true\" id=\"enter\" >\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("        \n");
      out.write("            var today=new Date().toISOString().split('T')[0];\n");
      out.write("        document.getElementsByName(\"somedate\")[0].setAttribute('min', today);\n");
      out.write("            function val()\n");
      out.write("            {\n");
      out.write("                alert('WORKING BHAI');\n");
      out.write("                var date=document.getElementsByName(\"somedate\").value;\n");
      out.write("                if(date==today)\n");
      out.write("                {\n");
      out.write("                    alert('WORKING');\n");
      out.write("                    document.getElementsById(\"time\").remove(1);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("</html>\n");
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
