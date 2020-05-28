<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/font-awesome.css" rel="stylesheet">
<title>Insert title here</title>
<style>
     .box1{
	       height:200px;
		   width:4%;
		   background:yellow;
		   margin-left:-6.9px;
		  }
	 .fb{
          height:50px;
          width:558%;
		  margin-left:-270px;
		  background:navy;
		  transition:margin-left 3s;
		  background:green;
		}
     .fb1>i{
             line-height:50px;
           }
     .fb1{
           color:white;
           float:right;
           width:55px;
           background:navy;
           height:50px;
           text-align:center;
           font-size:30px;
         }
		 .yt1{
		    
           color:white;
           float:right;
           width:55px;
           background:red;
           height:50px;
           text-align:center;
           font-size:30px;
         }
		 .in1{
           color:white;
           float:right;
           width:55px;
           background:blue;
           height:50px;
           text-align:center;
           font-size:30px;
         }
     .fb_btn>button{
                     margin-left:50px;
                     float:left;
                     font-size:22px;	
					 background:navy;
					 border-style:none;
					 color:white;
					 box-shadow:1px 1px 2px black;
					 width:150px;
					 height:50px;
				   }
     .fb1>i:hover{
	                     transform:rotate(360deg);
                         transition-duration:3s;
                }	 
	.fb:hover{
	   	   
              transition-timing-function:ease;
              margin-left:-1px;
             }
</style>
</head>
<body>
<div class="box1">
   <div class="fb">
     <div class="fb1">
	   <i class="fa fa-facebook"></i>
	 </div>
     <div class="fb_btn"><button>facebook</button>
	 </div> 	 
   </div>
   <div class="fb">
     <div class="in1">
	   <i class="fa fa-twitter"></i>
	 </div>
     <div class="fb_btn"><button>twitter</button>
	 </div> 	 
   </div>
   <div class="fb">
     <div class="yt1">
	   <i class="fa fa-youtube"></i>
	 </div>
     <div class="fb_btn"><button>you tube</button>
	 </div> 	 
   </div>
   <div class="fb">
     <div class="in1">
	   <i class="fa fa-linkedin"></i>
	 </div>
     <div class="fb_btn"><button>linkedin</button>
	 </div> 	 
   </div>
   
 <div>
 	<input type="file">
 </div>  
</div>   
</body>
</html>