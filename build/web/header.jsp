<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="C://Users/Dell/Desktop/javascript/JQuery/JQuery.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">

	<!-- Drop Down BootStrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords"/>
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
.main
{
margin-top: -70px;
}
.body
{
	margin-top: 20px;
}
.modal-header, .modal-body, .modal-footer{
  padding: 25px;
}
.modal-footer{
  text-align: center;
}
#signup-modal-content, #forgot-password-modal-content, #forgot-password-next-modal-content{
  display: none;
}
 
/** validation */
  
input.parsley-error{    
  border-color:#843534;
  box-shadow: none;
}
input.parsley-error:focus{    
  border-color:#843534;
  box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #ce8483
}
.parsley-errors-list.filled {
  opacity: 1;
  color: #a94442;
  display: none;
}
.modal {
  text-align: center;
  padding: 0!important;
  font-size: 1.2em;
 }

.modal:before {
  content: '';
  display: inline-block;
  height: 100%;
  vertical-align: middle;
  margin-right: -4px;
}
.modal-header{
	text-align: center;
}	

.modal-dialog {
  display: inline-block;
  text-align: left;
  vertical-align: middle;
}
.modal-footer{
	text-align: center;
	font-size: 1em;
	
}

#signupModal, #loginModal, #FPModal{
	cursor: pointer;
}

#option{
	
	
	
}
</style>
</head>

<body>
<!-- header -->

	<div class="header" id="home"   >
		<div class="top_menu_w3layouts">
			<div class="header_left">
			
				<ul>
					<li><i class="fa fa-map-marker" aria-hidden="true"></i> CCET, Sector-26, Chandigarh</li>
					<li><i class="fa fa-phone" aria-hidden="true"></i> +(91) 9115847514</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">info@projectvilla.com</a></li>
				</ul>
			</div>
<%
	String userId=null;
	if(session.getAttribute("email")==null)
	{
		Cookie[] cookies = request.getCookies();  
                for(int i = 0; i < cookies.length; i++)
                { 
                    Cookie c = cookies[i];
                    if (c.getName().equals("cookieID"))
                    {
                        userId= c.getValue();
                        
                    }
                }  
                
	%>
		<div class="header_right">
			<ul class="forms_right">
			 	<li><button type="button" class="btn btn-info btn-md" id="signup" data-toggle="modal" data-target="#login-signup-modal"> SignIn/SignUp</button></li>
					
					<!-- Bootstrap Modal -->
					<!--Login, Signup, Forgot Password Modal -->
					<div id="login-signup-modal" class="modal fade" tabindex="-1" role="dialog">
			  			<div class="modal-dialog" role="document">
			    
			    		<!-- login modal content -->
			    		    <div class="modal-content" id="login-modal-content">
			        			 <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							        <h4 class="modal-title"><span class="glyphicon glyphicon-lock"></span> SignIn Now!</h4>
							      </div>
			        		<div class="modal-body">
					          <form method="post" action="logincheck.jsp" name="loginform" id="Login-Form">
					            <div class="form-group">
					                <div class="input-group">
					                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
                                                        <input name="email" id="email" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email" value="<%if(userId!=null){out.println(userId);}%>">
					                </div>                      
					            </div>
			                    <div class="form-group">
					                <div class="input-group">
					                <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
					                <input name="password" id="login-password" type="password" class="form-control input-lg" placeholder="Enter Password" required data-parsley-length="[6, 10]" data-parsley-trigger="keyup">
					                </div>                      
					            </div>
					            <div class="checkbox">
					              <label><input type="checkbox" value="yes" name="remember"checked>Remember me</label>
					            </div>
					              <input type="submit" class="btn btn-success btn-block btn-lg" value="LOGIN">
					          </form>
			        		</div>
					        <div class="modal-footer">
					          <p>
					          <a id="FPModal" >Forgot Password?</a>  
					          <a id="signupModal" >Register Here!</a>
					          </p>
					        </div>
			        	</div>
			        
			        <!-- signup modal content -->
			        <div class="modal-content" id="signup-modal-content">
			        
			        <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title"><span class="glyphicon glyphicon-lock"></span> Signup Now!</h4>
			      </div>
			                
			       <div class="modal-body">
			          <form method="post" id="Signin-Form" action="Signup_Insert.jsp" onsubmit="formsignup()" name="signupform">
			          
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="glyphicon glyphicon-pencil"></span></div>
			                <input name="fullname" id="fullname" type="text" class="form-control input-lg" placeholder="Full Name" required data-parsley-equalto="#passwd" data-parsley-trigger="keyup">
			                </div>                      
			            </div>
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
			                <input name="signupemail" id="email" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email">
			                </div>                     
			            </div>
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="glyphicon glyphicon-earphone"></span></div>
			                <input name="contact" id="contact" type="text" class="form-control input-lg" placeholder="Enter Contact Number" required data-parsley-type="email">
			                </div>                     
			            </div>
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="fa-male, fa-female"></span></div>
			                <select name="gender" id="gender" class="form-control input-lg" >
									 		<option value="male">Male</option>
											<option value="female">Female</option>
											<option value="other">Others</option>
										  </select>
			                </div>                     
			            </div>
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
			                <input name="cpassword" id="passwd" type="password" class="form-control input-lg" placeholder="Enter Password" required data-parsley-length="[6, 10]" data-parsley-trigger="keyup">
			                </div>                      
			            </div>
			            
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
			                <input name="cnpassword" id="confirm-passwd" type="password" class="form-control input-lg" placeholder="Retype Password" required data-parsley-equalto="#passwd" data-parsley-trigger="keyup">
			                </div>                      
			            </div>
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="fa-male, fa-female"></span></div>
			                <select name="securityquestion" id="question" class="form-control input-lg" >
									 		<option value="What is your Mother's Birth Place?">Mother's Birth Place?</option>
											<option value="What is your High School Name?">What is your High School Name?</option>
											<option value="What is your Father's DOB?">What is your Father's DOB?</option>
                                                                                        <option value="What is your NickName?">What is your NickName?</option>
										  </select>
			                </div>                     
			            </div>
                                    <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="glyphicon glyphicon-earphone"></span></div>
			                <input name="answer" id="answer" type="text" class="form-control input-lg" placeholder="Enter Security Answer" required >
			                </div>                     
			            </div>
			            
			            
			              <input type="submit" class="btn btn-success btn-block btn-lg" value="CREATE ACCOUNT">
			          </form>
			        </div>
			        
			        <div class="modal-footer">
			          <p>Already a Member ? <a id="loginModal" href="javascript:void(0)">Login Here!</a></p>
			        </div>
			        
			      </div>
			        <!-- signup modal content -->
			        
			        <!-- forgot password content -->
			         <div class="modal-content" id="forgot-password-modal-content">
			        
			        <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title"><span class="glyphicon glyphicon-lock"></span> Recover Password!</h4>
			      </div>
			        
			        <div class="modal-body">
			          <form method="post" id="Forgot-Password-Form" role="form">
			          
			            <div class="form-group">
			                <div class="input-group">
			                <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
			                <input name="email" id="fpemail" type="email" class="form-control input-lg" placeholder="Enter Email" required data-parsley-type="email">
			                </div>                     
			            </div>
			                        
			            <button type="button" class="btn btn-success btn-block btn-lg" id="forgotpassbutton">
			              <span class="glyphicon glyphicon-send"></span> SUBMIT
			            </button>
			          </form>
			        </div>
			        
			        <div class="modal-footer">
			          <p>Remember Password ? <a id="loginModal1" href="javascript:void(0)">Login Here!</a></p>
			        </div>
			        
			      </div>        
			        <!-- forgot password content -->
			
					
				<!-- Forgot Password Options -->
				<div class="modal-content" id="forgot-password-next-modal-content">
			        
			        <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title"><span class="glyphicon glyphicon-lock"></span> Get Password By Using:  </h4>
			      </div>
			        
			        <div class="modal-body">
			          <form method="post" id="Forgot-Password-Form" role="form" action="forgotpassword.jsp">
			          
			            <div class="form-group">
			                <div class="input-group">
			                	<input type="hidden" value="document.getElementById('fpemail').value" name="fpmail">
			                	<input type="radio" name="option" value="security"><b> Security Question</b><br>
			                	<input type="radio" name="option" value="email"><b> Email</b><br>
			                	<input type="radio" name="option" value="sms"><b>SMS</b>
			                </div>                     
			            </div>
			                        
			            <button type="submit" class="btn btn-success btn-block btn-lg">
			              <span class="glyphicon glyphicon-send"></span> Recover Password
			            </button>
			          </form>
			        </div>
			        
			        <div class="modal-footer">
			          <p>Remember Password ? <a id="loginModal1" href="javascript:void(0)">Login Here!</a></p>
			        </div>
			        
			      </div>        
			        <!-- forgot password content -->
				
				<!-- Forgot Password answer -->
			
					
			    
			    	<!-- /.modal-content -->
			  		</div><!-- /.modal-dialog -->
					</div>
			        <!--Login, Signup, Forgot Password Modal -->
              	<!-- Bootstrap Modal -->
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>

		<div class="content white ">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container ">
					<div class="navbar-header ">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
						<a class="navbar-brand" href="index.jsp" style="margin-left: -80px;">
							<h1><span class="fa fa-code-fork" aria-hidden="true"></span>Project Villa <label>Making Easier for You.</label></h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav" style="margin-right: -80px;">
								<li ><a href='index.jsp?id="+home1"' id="home1" >What we are</a></li>
								<li><a href='projects.jsp?id="+projects1"' id="projects1" >Projects</a></li>
								<li><a href='explore.jsp?id="+explore1"' id="explore1" >what we do</a></li>
								<li class="dropdown">
									<a href="services.jsp" class="dropdown-toggle" data-toggle="dropdown" id="support1">Support <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href='services.jsp?id="+support1"' id="services1" >Services</a></li>
										<li class="divider"></li>
										<li><a class="s-menu" >Customers <b class="fa fa-caret-right"></b></a>
											<ul class="dropdown-menu sub-menu">
												<li><a href='stories.jsp?id="+support1"' id="stories1">Customer Stories</a></li>
												<li class="divider"></li>
												<li><a href='reviews.jsp?id="+support1"' id="reviews1">Reviews</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li><a href='blog.jsp?id="+blog1"' id="blog1" >Blog</a></li>
								<li><a href='mailus.jsp?id="+mail"' id="mail" >Mail Us</a></li>
								<li><a href='' data-toggle="modal" data-target="#login-signup-modal" id="demand" >Work with us</a></li>
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
		
	</div>
	
	<%	
	}	
	else
	{
		String email=(String)session.getAttribute("name");
%>	
	<div class="header_right">
				<div class="dropdown">
						<ul class="forms_right">
					 		  <li><button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><%=email %>
							    <span class="caret"></span></button>
							    <ul class="dropdown-menu" style="margin-top: 40px;">
							      <li style="border-bottom: 1px solid gray; width: 100%;"><a href="profile.jsp" style="background-color: white; color: black; font-size: 1em;">View Profile</a></li>
							      <li style="border-bottom: 1px solid gray; width: 100%;"><a href="profilepassword.jsp" style="background-color: white; color: black; font-size: 1em;">Change Password</a></li>
							      <li><a href="logout.jsp" style="background-color: white; color: black; font-size: 1em;">LogOut</a></li>
							    </ul>
							    </li>
							<li><a href="logout.jsp" class="Button">LogOut</a></li>
						</ul>
					</div>
			</div>
			<div class="clearfix"> </div>
		</div>

		<div class="content white">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
						<a class="navbar-brand" href="index.jsp" style="margin-left: -80px;">
							<h1><span class="fa fa-code-fork" aria-hidden="true"></span>Project Villa <label>Making Easier for You.</label></h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav" style="margin-right: -80px;">
								<li ><a href='index.jsp?id="+home1"' id="home1" >What we are</a></li>
								<li><a href='projects.jsp?id="+projects1"' id="projects1" >Projects</a></li>
								<li><a href='explore.jsp?id="+explore1"' id="explore1" >what we do</a></li>
								<li class="dropdown">
									<a href="services.jsp" class="dropdown-toggle" data-toggle="dropdown" id="support1">Support <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href='services.jsp?id="+support1"' id="services1" >Services</a></li>
										<li class="divider"></li>
										<li><a class="s-menu" >Customers <b class="fa fa-caret-right"></b></a>
											<ul class="dropdown-menu sub-menu">
												<li><a href='stories.jsp?id="+support1"' id="stories1">Customer Stories</a></li>
												<li class="divider"></li>
												<li><a href='reviews.jsp?id="+support1"' id="reviews1">Reviews</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li><a href='blog.jsp?id="+blog1"' id="blog1" >Blog</a></li>
								<li><a href='mailus.jsp?id="+mail"' id="mail" >Mail Us</a></li>
								<li><a href='requestapplication.jsp?id="demand"' id="demand" >Work with us</a></li>
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>			
<%
}
%>    
</body>
<script>
$('#Login-Form').parsley();
$('#Signin-Form').parsley();
$('#Forgot-Password-Form').parsley();

</script>
<script>
function val()
{
	if(document.getElementById("cnpassword").value==document.getElementById("npassword").value)
	{
		document.getElementById("message").innerHTML="Password Matched";	
		document.getElementById("message").style.color="green";
	}
	else
	{
		document.getElementById("message").innerHTML="Password Do Not Matched";
		document.getElementById("message").style.color="red";
	}
}
function formlogin(){  
	var email=document.loginform.email.value;
	var phoneno = /^\d{10}$/;
	if (email!=null || email!="" ){
		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email) || email.match(phoneno))
		{
			return true;
		}
		else
		{
			alert("Enter the valid Email or Contact Number");
			return false;
		}
	}
	else
	{  
	  alert("Email or Contact Number cannot be empty");  
	  return false;  
	}
}
function formsignup()
{  
	var name=document.signupform.name.value;
	var email=document.signupform.signupemail.value;
	var contact=document.signupform.contact.value;
	var phoneno = /^\d{10}$/;
	var cnpassword=document.signupform.cnpassword.value;
	var answer=document.signupform.answer.value;
	  
	  
	if (name!=null || name!="" ){
		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))
		{
			if(contact.match(phoneno))
			{
				if(cnpassword.match())
				{
					if(answer!=null)
                                        {
                                            return true;
                                        }
                                        else
                                        {
                                            alert("Enter the Security Answer");
                                            return false;
                                        }
				}
				else
				{
				 	alert("Enter the Valid Password!");
				 	return false;
				}
			}
			else
			{
				alert("Enter the valid Contact Number");
				return false;
			}
		}
		else
		{
			alert("Enter valid Email Address");
			return false;
		}
	}
	else
	{  
	  alert("Name can't be blank");  
	  return false;  
	}
}
</script>
<script>

$(document).ready(function(){
	  
	    	
	  $('#signupModal').click(function(){			    		
	  	$('#login-modal-content').fadeOut('fast', function(){
	  	   $('#signup-modal-content').fadeIn('fast');
	    });
	  });
	    		   		
	  $('#loginModal').click(function(){			    			
	    $('#signup-modal-content').fadeOut('fast', function(){
	       $('#login-modal-content').fadeIn('fast');
	    });
	  });
	    		
	  $('#FPModal').click(function(){			   			
	    $('#login-modal-content').fadeOut('fast', function(){
	       $('#forgot-password-modal-content').fadeIn('fast');
	    });
	  });
	    		
	  $('#loginModal1').click(function(){			    			
	    $('#forgot-password-modal-content').fadeOut('fast', function(){
	       $('#login-modal-content').fadeIn('fast');
	    });
	  });
	  
	  $('#forgotpassbutton').click(function(){			    		
		  	$('#forgot-password-modal-content').fadeOut('fast', function(){
		  	   $('#forgot-password-next-modal-content').fadeIn('fast');
		    });
		  });
	});
</script>
</html>