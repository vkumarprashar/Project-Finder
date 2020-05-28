<%-- 
    Document   : downloadoptions
    Created on : Apr 17, 2018, 9:40:40 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Lively Chat Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
        <style>
            button{
                padding: 5px 20px; 
                background: white; 
                border: 3px solid #ccc; 
                color: black; 
                border-radius: 10px;
            }
        </style>
    
    </head>
    <body>
        <%
            String uploaded=request.getParameter("uploaded");
            System.out.println("PROJECT IS UPLOADED BY (DOWNLOAD OPTION)=="+uploaded);
            String synopsis=(String)session.getAttribute("psynopsis");
            System.out.println("Synopsis="+synopsis);
            String report=(String)session.getAttribute("preport");
            System.out.println("REPORT="+report);
            String ppt=(String)session.getAttribute("pppt");
            System.out.println("PPT="+ppt);
            
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container" style="margin-top: 50px; margin-bottom: 50px;">
            <div class="col-md-4 grid_info" style="width: 100%;">
                <div class="icon_info" style="float: left; width: 50%;">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                    <h5><button type="button" id="myBtn">Get Project via Email</button></h5>
                    <p>The Complete Project and the Other Attachments that is selected by you will be send to you on your Email.</p>
                </div>    
                    <!--NO SESSION MODAL-->
                    <div class="modal fade" id="nosession" role="dialog">
                        <div class="modal-dialog">

                          <!-- Modal content-->
                          <div class="modal-content">
			        
			        <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h3 class="modal-title"><span class="fa fa-cloud-download"></span> Get via Email</h3>
			      </div>
			        
			        <div class="modal-body">
                                    <form method="post" id="Forgot-Password-Form" role="form" action="downloadoptionEmail.jsp?upload=<%=uploaded%>">
			          
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
			                <input name="email" id="fpemail" type="email" class="form-control input-lg" placeholder="Enter Email to get Project" required data-parsley-type="email">
			                </div>                     
			            </div>
			                        
			            <button type="submit" class="btn btn-success btn-block btn-lg" id="forgotpassbutton">
			              <span class="glyphicon glyphicon-send"></span>GET PROJECT
			            </button>
			          </form>
			        </div>
			        
			        <div class="modal-footer">
			          <p>The Project will be send only once on the email that will be given by you.</p>
			        </div>
			        
			      </div>
                        </div>
                      </div>
                      <!--NO SESSION MODAL ENDS-->
                      
                      <!--SESSION MODAL-->
                      <div class="modal fade" id="session" role="dialog">
                        <div class="modal-dialog">

                          <!-- Modal content-->
                          <div class="modal-content">
			        
			        <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h3 class="modal-title"><span class="fa fa-cloud-download"></span> Get via Email</h3>
			      </div>
			        
			        <div class="modal-body">
                                    <form method="post" id="Forgot-Password-Form" role="form" action="downloadoptionEmail.jsp?upload=<%=uploaded%>">
			          
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                                        <input name="email" id="fpemail" type="email" class="form-control input-lg" value="" required data-parsley-type="email">
			                </div>                     
			            </div>
			                        
			            <button type="submit" class="btn btn-success btn-block btn-lg" id="forgotpassbutton">
			              <span class="glyphicon glyphicon-send"></span>GET PROJECT
			            </button>
			          </form>
			        </div>
			        
			        <div class="modal-footer">
			          <p>The Project will be send only once on the email that will be given by you.</p>
			        </div>
			        
			      </div>
                        </div>
                      </div>
                      <!--SESSION MODAL-->
                <div class="icon_info" style="float: right; width: 48%; border-left: 3px dotted #ccc; margin-left: 3px;">
                    <span class="fa fa-cloud-download" aria-hidden="true"></span>
                    <h5><button type="button"><a href="downloadDirect.jsp?uploaded=<%=uploaded%>">Direct Download</a></button></h5>
                    <p>The Project will be downloaded on your Computer in which you are working now.</p>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script>
        $(document).ready(function(){
            $("#myBtn").click(function(){
    <%if(session.getAttribute("email")==null){
                %>
                $("#nosession").modal();
                <%
                }
                else
                {
                %>
                    $("#session").modal();
                <%    
                }
                %>
            });
        });
    </script>
</html>
