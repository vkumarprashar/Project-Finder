package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class requestapplication_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Request Application </title>\r\n");
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
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- banner -->\r\n");
      out.write("\t<div class=\"banner_inner_content_agile_w3l\" >\r\n");
      out.write("\t\t<p>Add Some Description</p>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!--//banner -->\r\n");
      out.write("\t<!--/w3_short-->\r\n");
      out.write("\t<div class=\"services-breadcrumb_w3ls\">\r\n");
      out.write("\t\t<div class=\"inner_breadcrumb\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<ul class=\"short\">\r\n");
      out.write("\t\t\t\t<li><a href=\"index.jsp\">Home</a><span>|</span></li>\r\n");
      out.write("\t\t\t\t<li>Work With Us</li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!--//w3_short-->\r\n");
      out.write("\t<!-- /inner_content -->\r\n");
      out.write("\t<div class=\"banner-bottom\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"tittle_head_w3layouts\">\r\n");
      out.write("\t\t\t\t<h3 class=\"tittle\">Work With <span>Us</span></h3>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"inner_sec_info_agileits_w3\">\r\n");
      out.write("               <div class=\"contact-text\">\r\n");
      out.write("\t\t\t\t    <div class=\"con-text\">\r\n");
      out.write("\t\t\t\t\t  <p><a href=\"mailto:contact@example.com\" > info@projectvilla.com</a></p>\r\n");
      out.write("\t\t\t\t     <p>+(91)9115847514</p>\r\n");
      out.write("\t\t\t\t\t <h6><a href=\"#map\">CCET,sector-26,Chandigarh.</a></h6>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t </div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"contact-form\">\r\n");
      out.write("\t\t\t\t\t <div class=\"left_form\">\r\n");
      out.write("\t\t\t\t\t    \t<h1 style=\"margin: 0px 10px; color: black; font-weight: bold; font-size: 2em;\">Message Us</h1>\r\n");
      out.write("\t\t\t\t\t    \t<p style=\"font-size: 1.2em; margin: 10px; color: black;\">EveryOne who is having the knowledege can do work for us. Here \r\n");
      out.write("\t\t\t\t\t    \tyou will also work from home.The Technical skills of the person are developed here. The great Working Enviorment will \r\n");
      out.write("\t\t\t\t\t    \tbe provided to you. We will be Enchanced If you work with us. Project Finder is not just a Team, They are the family. \r\n");
      out.write("\t\t\t\t\t    \t</p>\r\n");
      out.write("\t\t\t\t\t    \t<br>\r\n");
      out.write("\t\t\t\t\t    \t<p>To check Your Requested Applications Status <a href=\"requestedApplicationStatus.jsp\">Click Here</a></p>\r\n");
      out.write("\t\t\t\t\t    \t<img src=\"images/banner1.jpg\" style=\"height: 200px; margin: 20px; border: 1px solid black;\" alt=\"Project Villa\"/>\r\n");
      out.write("\t\t\t\t\t    </div>\r\n");
      out.write("                                    <form action=\"requestapplication2.jsp\" enctype=\"multipart/form-data\" method=\"get\">\r\n");
      out.write("\t\t\t\t\t    <div class=\"right_form\">\r\n");
      out.write("\t\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t    \t<span><label>Project Name</label></span>\r\n");
      out.write("\t\t\t\t\t\t    \t<span><input name=\"projectname\" type=\"text\" class=\"textbox\" required=\"\" ></span>\r\n");
      out.write("\t\t\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t    \t<span><label>Technology the project made in</label></span>\r\n");
      out.write("\t\t\t\t\t\t    \t<span><select id=\"technology\" name=\"technology\" required=\"\" style=\"width:100%; padding: 16px 15px; \">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"null\">Select Language</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"android\">Android</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"C\">C</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"C#\">C#</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"C++\">C++</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"html\">HTML & CSS</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"ios\">IOS</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"Java\">Java</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"js\">JavaScript</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"kotlin\">Kotlin</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"perl\">Perl</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"python\">Python</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"ruby\">Ruby</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"vb.net\">VB.Net</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"vbscript\">VB Script</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"j2ee\">Web Designing using java</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"php\">Web Designing using PHP</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select><br></span>\r\n");
      out.write("\t\t\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\t\t    \r\n");
      out.write("\t\t\t\t\t\t    <div>\r\n");
      out.write("\t\t\t\t\t\t    \t<span><label>Project Synopsis</label></span>\r\n");
      out.write("\t\t\t\t\t\t    \t<span><input name=\"synopsis\" type=\"file\" class=\"textbox\"></span>\r\n");
      out.write("\t\t\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div>\t\t\t\t\t    \t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span><label>About Project</label></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span><textarea name=\"about\" required=\"\"></textarea></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t   <div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span><input type=\"submit\" value=\"Submit\"  class=\"myButton\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t\t\t\t  \t\r\n");
      out.write("\t\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\t    \r\n");
      out.write("\t\t\t\t\t    <div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t<center><span style=\"margin: 10px 0px; color: black;\">The shared Information will not be disclosed with anyone else</span></center>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t<!-- /map -->\r\n");
      out.write("\t\t\t<div class=\"map_w3layouts_agile\" id=\"map\">\r\n");
      out.write("\t\t\t\t<iframe src=\"https://www.google.com/maps/embed/v1/place?q=place_id:ChIJa8lu5gvtDzkR_hlzUvln_6U&key=AIzaSyCt_BvskVwOA9b6sjc_SZ-E7t-k5DCtrBc\" allowfullscreen></iframe>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t<!-- //map -->\r\n");
      out.write("\t<!-- footer -->\r\n");
      out.write("\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- //footer -->\r\n");
      out.write("\t<!-- js -->\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery-2.1.4.min.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\t$('ul.dropdown-menu li').hover(function () {\r\n");
      out.write("\t\t\t$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);\r\n");
      out.write("\t\t}, function () {\r\n");
      out.write("\t\t\t$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<!-- password-script -->\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\twindow.onload = function () {\r\n");
      out.write("\t\t\tdocument.getElementById(\"password1\").onchange = validatePassword;\r\n");
      out.write("\t\t\tdocument.getElementById(\"password2\").onchange = validatePassword;\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\tfunction validatePassword() {\r\n");
      out.write("\t\t\tvar pass2 = document.getElementById(\"password2\").value;\r\n");
      out.write("\t\t\tvar pass1 = document.getElementById(\"password1\").value;\r\n");
      out.write("\t\t\tif (pass1 != pass2)\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"password2\").setCustomValidity(\"Passwords Don't Match\");\r\n");
      out.write("\t\t\telse\r\n");
      out.write("\t\t\t\tdocument.getElementById(\"password2\").setCustomValidity('');\r\n");
      out.write("\t\t\t//empty string means no validation error\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\tvar a=document.getElementById(\"demand\");\r\n");
      out.write("\t\ta.className=\"active\";\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- //password-script -->\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
