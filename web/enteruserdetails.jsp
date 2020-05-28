<%-- 
    Document   : enteruserdetails
    Created on : Mar 3, 2018, 7:10:20 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Details</title>
        <!--Tags-->
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
            .comb
            {
                
                font-size: 1.3em;
                font-weight: 300;
            }
            .comb label{
                padding-left: 20px;
            }
            input[type=checkbox]
            {
                width: 30px;
                height: 20px;
            }
            .option{
                height: auto;
                width: 100%;
            }
            .option_left{
                margin-top: 10px;
                float: left;
                width: 48%;
            }
            .option_right{
                margin-top: 10px;
                float: right;
                width: 52%;
            }
        </style>
    
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3layouts">
				<h3 class="tittle">Enter <span>Details </span></h3>
			</div>
			<div class="profile">
				<div class="contact-form" >
					<form action="enteruserdetails2.jsp" onsubmit="">
						<div class="main" style="padding-left: 15px;  width: 50%;">
                                                <div>
                                                    <div class="heading">
                                                        <h1>Technologies You are Good In..?</h1>
                                                    </div>
                                                    <div class="option">
                                                    <div class="option_left">
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="android">
                                                        <label for="android" >Android</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="ajax">
                                                        <label for="ajax">Ajax</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="c">
                                                        <label for="c">C</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="cplus">
                                                        <label for="cplus">C++</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="html&css">
                                                        <label for="html">HTML & CSS</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="ios">
                                                        <label for="ios">IOS</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="java">
                                                        <label for="java">Java SE (Core Java)</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="kotlin">
                                                        <label for="kotlin">Kotlin</label>
                                                        </div>
                                                    </div>
                                                    <div class="option_right">
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="perl">
                                                        <label for="perl">Perl</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="python">
                                                        <label for="python">Python</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="ruby">
                                                        <label for="ruby">Ruby</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="rubyonrails">
                                                        <label for="rubyonrails">Ruby On Rails</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="vbnet">
                                                        <label for="vbnet">VB.Net</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="j2ee">
                                                        <label for="j2ee">Java EE</label>
                                                        </div>
                                                        <div class="comb">
                                                        <input type="checkbox" value="1" name="php">
                                                        <label for="php">PHP</label>
                                                        </div>
                                                    </div>
                                                    </div>
                                                </div>
                                                    <div>
                                                    <span>You Must only select those technologies in which you already worked*</span>
                                                    </div>
                                                <div>
                                                    <input type="checkbox" value="enableEmail" name="enable"  checked="true"> 
                                                    <label for="enable" style="font-size: 1em;">Subscribe for Regular Updates to get the Work Updates through Email.</label>
                                                </div>
                                                <div>
                                                    <input type="submit" value="Proceed to Upload Projects">
                                                </div>
                                                </div>
					</form>
				</div>
			</div>	
		</div>
	</div>
            
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
