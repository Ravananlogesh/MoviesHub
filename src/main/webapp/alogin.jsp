<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieHub</title>
<link rel="shortcut icon" href="images/logo.png">
<link rel="stylesheet" href="CSS/login.css">
<script src="https://kit.fontawesome.com/4080ed022e.js" crossorigin="anonymous"></script>
</head>
<body>
 
         <div id="main_content">
        <div id="container" style="font-family: sans-serif;">
        <h1 id="heading">Login</h1>
            <form action="adminlogin" method="post">
                <label class="content" for="user">Admin Email</label>
                <i class="fa-solid fa-user "></i>
                <input class="input_content" name="admin" type="email" placeholder="Admin Name" >
                <label class="content" for="password">Admin Password</label>
                <i class="fa-solid fa-lock"></i>
                <input class="input_content" name="password" type="password" placeholder="Password">
                <br>
                <a class="link" id="link1" href="asignup.jsp">SignUp</a>
                 <input id="adminLogin" value="Login" type="submit">
                <span>Forget Password ? <a style="text-decoration: none; color: rgb(43, 40, 240); font-weight: bold;" href="#">Click Here</a></span>

            </form>
        </div>
      </div>
       
<% String messages=(String) request.getAttribute("messages"); %>
<% if(messages!=null){ %>
<%=messages %>
<%} %>
</body>
</html>