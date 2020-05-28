package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class enteruserdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Enter Details</title>\n");
      out.write("        <!--Tags-->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\t<meta name=\"keywords\" content=\"Lively Chat Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("\t<script type=\"application/x-javascript\">\n");
      out.write("\t\taddEventListener(\"load\", function () {\n");
      out.write("\t\t\tsetTimeout(hideURLbar, 0);\n");
      out.write("\t\t}, false);\n");
      out.write("\n");
      out.write("\t\tfunction hideURLbar() {\n");
      out.write("\t\t\twindow.scrollTo(0, 1);\n");
      out.write("\t\t}\n");
      out.write("\t</script>\n");
      out.write("\t<!--//tags -->\n");
      out.write("\t<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("\t<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("\n");
      out.write("\t<link href=\"css/font-awesome.css\" rel=\"stylesheet\">\n");
      out.write("\t<!-- //for bootstrap working -->\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800\" rel=\"stylesheet\">\n");
      out.write("\t<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'\n");
      out.write("\t    rel='stylesheet' type='text/css'>\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"banner-bottom\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"tittle_head_w3layouts\">\n");
      out.write("\t\t\t\t<h3 class=\"tittle\">Profile <span>Options </span></h3>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"profile\">\n");
      out.write("\t\t\t\t<div class=\"contact-form\" >\n");
      out.write("\t\t\t\t\t<form action=\"enteruserdetails2.jsp\" onsubmit=\"\">\n");
      out.write("\t\t\t\t\t\t<div class=\"right_form\" style=\"border-left: 1px solid #999; padding-left: 15px; align: left; width: 50%;\">\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t<span><label for=\"Email\">Email</label></span>\n");
      out.write("\t\t\t\t\t\t\t<span><input type=\"text\" name=\"email\" class=\"textbox\" ></span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                                <div>\n");
      out.write("\t\t\t\t\t\t\t<span><label for=\"dob\">Date of Birth</label></span>\n");
      out.write("\t\t\t\t\t\t\t<span><input type=\"text\" name=\"dob\" class=\"textbox\" ></span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t<span><label for=\"occupation\">Occupation</label></span>\n");
      out.write("\t\t\t\t\t\t\t<span><select name=\"occupation\" class=\"textbox\">\n");
      out.write("                                                                <option value=\"student\">Student</option>\n");
      out.write("                                                                <option value=\"govtemployee\">Govt. Employee</option>\n");
      out.write("                                                                <option value=\"pvtemployee\">Private Employee</option>\n");
      out.write("                                                                <option value=\"professional\">Professional</option>\n");
      out.write("                                                            </select>\n");
      out.write("                                                        </span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t<span><label for=\"address\">Address</label></span>\n");
      out.write("\t\t\t\t\t\t\t<span><input type=\"text\" name=\"address\" class=\"textbox\"></span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                                <div>\n");
      out.write("                                                    <input type=\"checkbox\" value=\"enableEmail\" name=\"enable\" id=\"enable\"> \n");
      out.write("                                                    <label for=\"enable\">Enable Regular Updates on Email</label>\n");
      out.write("                                                </div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\t\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
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
