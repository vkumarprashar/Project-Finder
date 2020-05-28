package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class explore_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Explore Us</title>\r\n");
      out.write("\r\n");
      out.write("<!--/tags -->\r\n");
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
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- header -->\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\t<!-- banner -->\r\n");
      out.write("\t<div class=\"banner_inner_content_agile_w3l\">\r\n");
      out.write("\t\t<p>We always work for your ease!!</p>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!--//banner -->\r\n");
      out.write("\t<!--/w3_short-->\r\n");
      out.write("\t<div class=\"services-breadcrumb_w3ls\">\r\n");
      out.write("\t\t<div class=\"inner_breadcrumb\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<ul class=\"short\">\r\n");
      out.write("\t\t\t\t<li><a href=\"index.jsp\">Home</a><span>|</span></li>\r\n");
      out.write("\t\t\t\t<li>Explore</li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!--//w3_short-->\r\n");
      out.write("\r\n");
      out.write("\t<!-- /inner_content -->\r\n");
      out.write("\t<div class=\"banner-bottom\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"tittle_head_w3layouts\">\r\n");
      out.write("\t\t\t\t<h3 class=\"tittle\">About <span>Us </span></h3>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"inner_sec_info_agileits_w3\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-8 blog_section\">\r\n");
      out.write("\t\t\t\t\t<div class=\"blog_img single\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"single-left1\">\r\n");
      out.write("\t\t\t\t\t\t\t<img src=\"images/banner1.jpg\" alt=\" \" class=\"img-responsive\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5>The Team of the Project Villa is working for your satisfaction</h5>\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"blog_list single\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><span class=\"fa fa-user\" aria-hidden=\"true\"></span><a href=\"#\">Jan Mark</a><i>|</i></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><span class=\"fa fa-heart\" aria-hidden=\"true\"></span><a href=\"#\">10</a><i>|</i></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><span class=\"fa fa-tag\" aria-hidden=\"true\"></span><a href=\"#\">2</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t<p>The Objective of the Project Villa is to provide the best Quality work to our customers. Here you can search any specific project\r\n");
      out.write("\t\t\t\t\t\t\t\t you want in the languages such as C, C++, Java, PHP, etc. The Project Villa is gives you the best chance to consume your money \r\n");
      out.write("\t\t\t\t\t\t\t\t at right place. The prices of the Project Villa is very genuine According to our work.\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#plans\"><i> You can Check our Plans If you wish you to. The Secure Mode of Payment is applied for the payments conducted \r\n");
      out.write("\t\t\t\t\t\t\t\tby the Customers</i></a>\r\n");
      out.write("\t\t\t\t\t\t\t\tThe Motive of the Project Villa is to provide the all time service to our customers. Customers can ask there querie any time to \r\n");
      out.write("\t\t\t\t\t\t\t\tour executives.\tThis is not the only motive of the Project Villa, We work according to our customers. The Projects can be made \r\n");
      out.write("\t\t\t\t\t\t\t\taccording to the Customers need\tand requirements also.</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!-- <div class=\"comments_agileits\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>Our Recent <span>Comments</span></h3>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"comments-grids\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"comments-grid\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"comments-grid-left\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"images/t3.jpg\" alt=\" \" class=\"img-responsive\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"comments-grid-right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h4><a href=\"#\">Michael Crisp</a></h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li>5 Nov 2017 <i>|</i></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Reply</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>Ut ex metus, ornare ac ultricies sit amet, auctor a elit. Praesent sit amet scelerisque massa. Duis porta risus\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tid urna finibus aliquet.</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"comments-grid\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"comments-grid-left\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"images/t2.jpg\" alt=\" \" class=\"img-responsive\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"comments-grid-right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h4><a href=\"#\">Adam Lii</a></h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li>18 Nov 2017 <i>|</i></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Reply</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>Ut ex metus, ornare ac ultricies sit amet, auctor a elit. Praesent sit amet scelerisque massa. Duis porta risus\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tid urna finibus aliquet.</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"comments-grid\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"comments-grid-left\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"images/t1.jpg\" alt=\" \" class=\"img-responsive\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"comments-grid-right\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h4><a href=\"#\">Richard Carl</a></h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li>21 Nov 2017 <i>|</i></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Reply</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>Ut ex metus, ornare ac ultricies sit amet, auctor a elit. Praesent sit amet scelerisque massa. Duis porta risus\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tid urna finibus aliquet.</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"contact-form left_bar\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>Leave a <span>Comment</span></h3>\r\n");
      out.write("\t\t\t\t\t\t\t<form method=\"post\" action=\"#\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"left_form\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><label>Name</label></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><input name=\"userName\" type=\"text\" class=\"textbox\" required=\"\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><label>E-mail</label></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><input name=\"userEmail\" type=\"text\" class=\"textbox\" required=\"\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><label>Fax</label></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><input name=\"userPhone\" type=\"text\" class=\"textbox\" required=\"\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"right_form\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><label>Message</label></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><textarea name=\"Message\" required=\"\"> </textarea></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span><input type=\"submit\" value=\"Submit\" class=\"myButton\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t</div>-->\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-4 blog_left\">\r\n");
      out.write("\t\t\t\t\t<div class=\"search left_bar\">\r\n");
      out.write("\t\t\t\t\t\t<h3>Subscribe <span>here</span></h3>\r\n");
      out.write("                                    ");
if(session.getAttribute("email")==null){
      out.write("\r\n");
      out.write("\t\t\t\t\t<form action=\"subscribe.jsp\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"email\" name=\"email\" placeholder=\"Email Address...\" required=\"required\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\"Subscribe\">\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("                                    ");

                                    }
                                    else
                                    {
                                    
      out.write("  \r\n");
      out.write("                                        <form action=\"subscribe.jsp\" method=\"post\">\r\n");
      out.write("                                            <label>Subscribe to Stay Connected to Project Finder</label>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\"Subscribe\">\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("                                    ");
}
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"author left_bar\">\r\n");
      out.write("\t\t\t\t\t\t<h3>About <span>About Admin's</span></h3>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"author_grid_agile_w3\">\r\n");
      out.write("\t\t\t\t\t\t\t<p>The Admin of the Project Villa is the group of 4 members.  </p>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"author_grid_pos\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"images/pic.jpg\" alt=\" \" class=\"img-responsive\">\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"faq left_bar\">\r\n");
      out.write("\t\t\t\t\t\t<h3>FAQ's</h3>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"panel-group\" id=\"accordion\" role=\"tablist\" aria-multiselectable=\"true\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"panel-heading\" role=\"tab\" id=\"headingOne\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h4 class=\"panel-title asd\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a class=\"pa_italic\" role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseOne\" aria-expanded=\"true\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t    aria-controls=\"collapseOne\">\r\n");
      out.write("\t\t\t\t\t\t\t  <span class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span><i class=\"glyphicon glyphicon-minus\" aria-hidden=\"true\"></i>Why we need to signup to search the projects?\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"collapseOne\" class=\"panel-collapse collapse in\" role=\"tabpanel\" aria-labelledby=\"headingOne\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"panel-body panel_text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tTksajdklsalslskd sakjsalkjd askldjlsakjdas sajdslkajda asndsalda asdsand ddsandlksajdk sadaslkdjslakjd kdjlkj\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"panel-heading\" role=\"tab\" id=\"headingTwo\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h4 class=\"panel-title asd\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a class=\"pa_italic collapsed\" role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseTwo\" aria-expanded=\"false\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t    aria-controls=\"collapseTwo\">\r\n");
      out.write("\t\t\t\t\t\t\t  <span class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span><i class=\"glyphicon glyphicon-minus\" aria-hidden=\"true\"></i>Itaque earum rerum\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"collapseTwo\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingTwo\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"panel-body panel_text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tcupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"panel-heading\" role=\"tab\" id=\"headingThree\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h4 class=\"panel-title asd\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a class=\"pa_italic collapsed\" role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseThree\" aria-expanded=\"false\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t    aria-controls=\"collapseThree\">\r\n");
      out.write("\t\t\t\t\t\t\t  <span class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span><i class=\"glyphicon glyphicon-minus\" aria-hidden=\"true\"></i>autem accusamus terry qui\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"collapseThree\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingThree\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"panel-body panel_text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tcupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"panel panel-default\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"panel-heading\" role=\"tab\" id=\"headingFour\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h4 class=\"panel-title asd\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a class=\"pa_italic collapsed\" role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapseFour\" aria-expanded=\"false\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t    aria-controls=\"collapseFour\">\r\n");
      out.write("\t\t\t\t\t\t\t  <span class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span><i class=\"glyphicon glyphicon-minus\" aria-hidden=\"true\"></i>excepturi sint cliche proident\r\n");
      out.write("\t\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"collapseFour\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingFour\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"panel-body panel_text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tcupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t<!-- Plans -->\r\n");
      out.write("\t<div class=\"inner_sec_info_agileits_w3\" id=\"plans\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-3 plan_grid\" id=\"main\">\r\n");
      out.write("\t\t\t\t\t<div class=\"plan_grid_info_w3ls\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"price_tittle\">\r\n");
      out.write("\t\t\t\t\t\t\t<h3>STARTER</h3>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"price-bg\">\r\n");
      out.write("\t\t\t\t\t\t\t<p class=\"price-label-1\">$<span>11</span> <label>This Plan Contains<label></p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"count_w3ls_agile\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>One Project</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Project's PPT</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Synopsis</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Project Report</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"price-button\">\r\n");
      out.write("                                                                            ");

                                                                            if(session.getAttribute("email")==null)
                                                                            {
                                                                            
      out.write("\r\n");
      out.write("                                                                            <a href=\"signup.html\">Sign Up</a>\r\n");
      out.write("                                                                            ");

                                                                            }
                                                                            else
                                                                            {
                                                                            
      out.write("\r\n");
      out.write("                                                                            <a href=\"BuyPlan.jsp?id=starter\">Buy Now</a>\r\n");
      out.write("                                                                            ");

                                                                            }
                                                                            
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("\t\t\t\t\t</div>\t\r\n");
      out.write("\t\t\t\t\t<div class=\"col-md-3 plan_grid\">\r\n");
      out.write("\t\t\t\t\t\t <div class=\"plan_grid_info_w3ls\" id=\"two\">\r\n");
      out.write("\t\t\t\t\t\t\t <div class=\"price_tittle\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3>REGULAR</h3>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t <div class=\"price-bg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<p class=\"price-label-1 red\">$<span>45</span> <label>This Plan Contains<label></p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"count_w3ls_agile\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>5 Projects,Any Time</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Project's PPT</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Synopsis</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Project Reports</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"price-button red\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");

                                                                            if(session.getAttribute("email")==null)
                                                                            {
                                                                            
      out.write("\r\n");
      out.write("                                                                            <a href=\"signup.html\">Sign Up</a>\r\n");
      out.write("                                                                            ");

                                                                            }
                                                                            else
                                                                            {
                                                                            
      out.write("\r\n");
      out.write("                                                                            <a href=\"BuyPlan.jsp?id=regular\">Buy Now</a>\r\n");
      out.write("                                                                            ");

                                                                            }
                                                                            
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-3 plan_grid\">\r\n");
      out.write("\t\t\t\t\t\t <div class=\"plan_grid_info_w3ls\" id=\"three\">\r\n");
      out.write("\t\t\t\t\t\t\t <div class=\"price_tittle\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3>MOST POPULAR</h3>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t <div class=\"price-bg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<p class=\"price-label-1\">$<span>85</span> <label>This Plan Contains<label></p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"count_w3ls_agile\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>10 Projects,Any Time</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Project's PPT</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Synopsis</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Project Report</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Faster Response Time</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"price-button\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");

                                                                            if(session.getAttribute("email")==null)
                                                                            {
                                                                            
      out.write("\r\n");
      out.write("                                                                            <a href=\"signup.html\">Sign Up</a>\r\n");
      out.write("                                                                            ");

                                                                            }
                                                                            else
                                                                            {
                                                                            
      out.write("\r\n");
      out.write("                                                                            <a href=\"BuyPlan.jsp?id=Mostpopular\">Buy Now</a>\r\n");
      out.write("                                                                            ");

                                                                            }
                                                                            
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("\t\t\t\t\t</div>\t\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-3 plan_grid\">\r\n");
      out.write("\t\t\t\t\t\t <div class=\"plan_grid_info_w3ls\" id=\"four\">\r\n");
      out.write("\t\t\t\t\t\t\t <div class=\"price_tittle\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3>ENTERPRISE</h3>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t <div class=\"price-bg\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<p class=\"price-label-1 red\">$<span>160</span> <label>This Plan Contains<label></p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"count_w3ls_agile\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>20 Projects,Any Time</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Project's PPT</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Synopsis</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Project Report</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Fastest Response Time</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li>Help from Our Best Developors or Executive</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"price-button red\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");

                                                                            if(session.getAttribute("email")==null)
                                                                            {
                                                                            
      out.write("\r\n");
      out.write("                                                                            <a href=\"signup.html?id=Enterprise\">Sign Up</a>\r\n");
      out.write("                                                                            ");

                                                                            }
                                                                            else
                                                                            {
                                                                            
      out.write("\r\n");
      out.write("                                                                            <a href=\"BuyPlan.jsp\">Buy Now</a>\r\n");
      out.write("                                                                            ");

                                                                            }
                                                                            
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t</div></div>\r\n");
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
      out.write("\t\tvar a=document.getElementById(\"explore1\");\r\n");
      out.write("\t\ta.className=\"active\";\r\n");
      out.write("\t</script>\r\n");
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
