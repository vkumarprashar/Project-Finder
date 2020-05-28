<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Project</title>
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
        label{
            font-size: 20px;
            font-family: Times New Roman;
            
        }
        
    
    </style>
    </head>
    <body >
        <%
          String email=(String)request.getSession().getAttribute("email");
          String s=request.getParameter("sno");
          
          String projectName=request.getParameter("pname");
          String technology=request.getParameter("tech");
//          String cost=request.getParameter("pcost");
          
        %>    
        <jsp:include page="header.jsp"></jsp:include>
        <div style="margin-left:25%; margin-right: 25%; margin-bottom: 50px; border: 1px solid #DBDBDB; border-style: inset; height: auto;" class="contact-form">
            <form method="post" action="uploadproject2.jsp?tech=<%=technology%>&sno=<%=s%>" enctype="multipart/form-data">
                <div style="margin-left: 20px;"> 
                    <label for="pname">Project Name:</label><br />
                    <input style="width: 300px; margin-left: 0px;" type="text" name="projectname" id="pname" value="<%=projectName%>" readonly="true">
                </div>    
                <div style="margin-left: 20px;">
                    <label for="pabout" >About Project:</label><br/>
                    <textarea style="height: 150px; width: 350px;" name="projectabout" id="pabout" placeholder="Full Detail About Project"></textarea>
                </div>    
                <div style="margin-left: 20px;">
                    <br /> <label for="cproject">Complete Project(Zip File):</label><br />
                    <input style="width: 500px; margin-left: -200px;" type="file" name="complete project" required="true" id="cproject" accept=".zip">
                </div>
                <div style="margin-left: 20px; margin-top: 60px;">
                    <label for="preport">Project Report</label>
                    <input type="checkbox" id="mycheck" name="preportc" value="1" onclick="myfunc()"><br />
                    <input style="width: 500px; margin-left: -200px; display:none;" type="file" id="file" name="projectreport"  accept=".pdf,.doc,.docx">
                </div>
                <div style="margin-left: 20px; margin-top: 60px;">
                    <label for="psynopsis">Project Synopsis</label>
                    <input type="checkbox" id="mycheck2" name="psynopsisc" value="1" onclick="myfunc2()"> <br />
                    <input style="width: 500px; margin-left: -200px; display:none;" type="file" id="file2" name="projectsynopsis" id="psynopsis" accept=".pdf,.docx,.doc">
                </div>
                <div style="margin-left: 20px; margin-top: 60px;">
                    <label for="pppt">Project PPT</label>
                    <input type="checkbox" id="mycheck3" name="ppptc" value="1" onclick="myfunc3()"><br />
                    <input style=" width: 500px; margin-left: -200px; display:none;" id="file3" type="file" name="projectppt" id="pppt"  accept=".ppt,.pptx">
                </div>
                <div style="margin-top: 60px;">
                    <input style="text-align: center; margin-left: 250px; width: 200px; height: 40px; font-weight: bold; font-family: Times New Roman; font-size: 20px;" type="submit" value="Submit Project">
                </div>    
            </form>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
                      <script>
                    function myfunc() {
                      var checkbox = document.getElementById("mycheck");
                      var file = document.getElementById("file");
                     if (checkbox.checked ==true){
                        file.style.display = "block";
                      } else {
                        file.style.display = "none";
                      }
                    }
                    
                    function myfunc2() {
                      var checkbox = document.getElementById("mycheck2");
                      var file = document.getElementById("file2");
                     if (checkbox.checked ==true){
                        file.style.display = "block";
                      } else {
                        file.style.display = "none";
                      }
                    }
                    
                    function myfunc3() {
                      var checkbox = document.getElementById("mycheck3");
                      var file = document.getElementById("file3");
                     if (checkbox.checked ==true){
                        file.style.display = "block";
                      } else {
                        file.style.display = "none";
                      }
                    }
                            </script>
</html>