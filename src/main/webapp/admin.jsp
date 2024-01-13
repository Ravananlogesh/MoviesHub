<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieHub</title>
<link rel="shortcut icon" href="images/logo.png">

   <style type="text/css">
   #log{
         border: 1px solid black;
         width: 260px;
         height: 150px;
         text-align: center;
         position: absolute;
         left: 500px;
         top: 190px;
         line-height: 60px;
         background-color: silver;
         border-radius: 20px;
         
   }
   .hoverpart:hover {
	        background-color: purple;
	        color: white;
    }
  
   
   
   
   </style>
</head>
<body>
	<div id="log"><a href="alogin.jsp" class="hoverpart">Admin Login</a><br>
         <a href="asignup.jsp"  class="hoverpart" >Admin Signup</a>
</div>
</body>
</html>