<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieHub</title>
<link rel="shortcut icon" href="images/logo.png">
 <link rel="stylesheet" href="CSS/adminRegister.css">
 <script src="https://kit.fontawesome.com/4080ed022e.js" crossorigin="anonymous"></script>

</head>
<body>
	<div id="main_content">
        <div id="container" style="font-family: sans-serif;">
            <h1 id="heading">Register</h1>
            <form action="register" method="post" enctype="multidata/form-data">
                <label class="content" for="user">Admin Name</label>
                <i class="fas fa-user"></i>
                <input class="input_content" name="admin" type="text" placeholder="Admin Name" required>
                
                <label class="content" for="email">Admin Contact</label>
                <i class="fas fa-envelope"></i>
                <input class="input_content" name="cno" type="tel" placeholder="Email" required>

                <label class="content" for="email">Admin Email</label>
                <i class="fas fa-lock"></i>
                <input class="input_content" name="email" type="email" placeholder="Password" autocomplete="new-password" required>
               
                <label class="content" for="password">Admin Password</label>
                <i class="fas fa-lock"></i>
                <input class="input_content" name="password" type="password" placeholder="Confirm Password" autocomplete="new-password">
                <br>
                
                <a class="link" id="link1" href="alogin.jsp">Login</a>
             
                <input id="adminRegister" value="SignUp" type="submit">
                <span>Already have an account? <a style="text-decoration: none; color: rgb(43, 40, 240); font-weight: bold;" href="#">Login Here</a></span>
            </form>
        </div>
    </div>
</body>
</html>