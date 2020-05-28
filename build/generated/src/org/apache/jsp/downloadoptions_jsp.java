package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class downloadoptions_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <!--/tags -->\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
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
      out.write("        <style>\n");
      out.write("            button{\n");
      out.write("                padding: 5px 20px; \n");
      out.write("                background: white; \n");
      out.write("                border: 3px solid #ccc; \n");
      out.write("                color: black; \n");
      out.write("                border-radius: 10px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"container\" style=\"margin-top: 50px; margin-bottom: 50px;\">\n");
      out.write("            <div class=\"col-md-4 grid_info\" style=\"width: 100%;\">\n");
      out.write("                <div class=\"icon_info\" style=\"float: left; width: 50%;\">\n");
      out.write("                    <span class=\"fa fa-envelope-o\" aria-hidden=\"true\"></span>\n");
      out.write("                    <h5><button type=\"button\" id=\"myBtn\">Get Project via Email</button></h5>\n");
      out.write("                    <p>The Complete Project and the Other Attachments that is selected by you will be send to you on your Email.</p>\n");
      out.write("                    \n");
      out.write("                    <!-- MODAL-->\n");
      out.write("                    <div class=\"modal fade\" id=\"myModal\" role=\"dialog\">\n");
      out.write("                        <div class=\"modal-dialog\">\n");
      out.write("\n");
      out.write("                          <!-- Modal content-->\n");
      out.write("                          <div class=\"modal-content\">\n");
      out.write("\t\t\t        \n");
      out.write("\t\t\t        <div class=\"modal-header\">\n");
      out.write("\t\t\t        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("\t\t\t        <h4 class=\"modal-title\"><span class=\"\"></span> Enter Email</h4>\n");
      out.write("\t\t\t      </div>\n");
      out.write("\t\t\t        \n");
      out.write("\t\t\t        <div class=\"modal-body\">\n");
      out.write("\t\t\t          <form method=\"post\" id=\"Forgot-Password-Form\" role=\"form\">\n");
      out.write("\t\t\t          \n");
      out.write("\t\t\t            <div class=\"form-group\">\n");
      out.write("\t\t\t                <div class=\"input-group\">\n");
      out.write("\t\t\t                <div class=\"input-group-addon\"><span class=\"glyphicon glyphicon-envelope\"></span></div>\n");
      out.write("\t\t\t                <input name=\"email\" id=\"fpemail\" type=\"email\" class=\"form-control input-lg\" placeholder=\"Enter Email\" required data-parsley-type=\"email\">\n");
      out.write("\t\t\t                </div>                     \n");
      out.write("\t\t\t            </div>\n");
      out.write("\t\t\t                        \n");
      out.write("\t\t\t            <button type=\"button\" class=\"btn btn-success btn-block btn-lg\" id=\"forgotpassbutton\">\n");
      out.write("\t\t\t              <span class=\"glyphicon glyphicon-send\"></span> SUBMIT\n");
      out.write("\t\t\t            </button>\n");
      out.write("\t\t\t          </form>\n");
      out.write("\t\t\t        </div>\n");
      out.write("\t\t\t        \n");
      out.write("\t\t\t        <div class=\"modal-footer\">\n");
      out.write("\t\t\t          <p>Remember Password ? <a id=\"loginModal1\" href=\"javascript:void(0)\">Login Here!</a></p>\n");
      out.write("\t\t\t        </div>\n");
      out.write("\t\t\t        \n");
      out.write("\t\t\t      </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                      </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"icon_info\" style=\"float: right; width: 48%; border-left: 3px dotted #ccc; margin-left: 3px;\">\n");
      out.write("                    <span class=\"fa fa-cloud-download\" aria-hidden=\"true\"></span>\n");
      out.write("                    <h5><button type=\"button\">Direct Download</button></h5>\n");
      out.write("                    <p>The Project will be downloaded on your Computer in which you are working now.</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function(){\n");
      out.write("            $(\"#myBtn\").click(function(){\n");
      out.write("    ");
if(session.getAttribute("email")==null){
      out.write("\n");
      out.write("                $(\"#myModal\").modal();\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            });\n");
      out.write("        });\n");
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
