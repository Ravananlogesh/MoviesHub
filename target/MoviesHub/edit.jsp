<%@page import="java.util.Base64"%>
<%@page import="com.java.dto.Movie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieHub</title>
<link rel="shortcut icon" href="images/logo.png">
<link rel="stylesheet" href="CSS/Edit.css">
<script src="JS/edit.js"></script>
<script src="https://kit.fontawesome.com/4080ed022e.js" crossorigin="anonymous"></script>
</head>  
<body>


<div id="main-container">			
      <div id="container1">
      <%Movie m=(Movie)request.getAttribute("movie"); %>
      <form id="form-container" action="updatemovie" method="post" enctype="multipart/form-data">
  <label style="display:none" class="editLabel" for="movieId"> MovieId:</label>
 <input style="display:none" class="editInput"  id="movieId" type="number" name="mid" value="<%=m.getMid() %>" readonly>
 <br>
 <label class="editLabel" for="movieName">MovieName:</label>
  <input class="editInput"  id="movieName" type="text" name="mname" value="<%=m.getMname()%>">
 <br>
 <label class="editLabel" for="moviePrice"> MoviePrice:</label>
 <input class="editInput"  id="moviePrice" type="number" name="mprice" value="<%=m.getMprice()%>">
 <br>
 <label class="editLabel" for="movieGenre"> MovieGenre:</label>
 <input class="editInput"  id="movieGenre" type="text" name="mgenre" value="<%=m.getMgenre()%>">
 <br>
 <label class="editLabel" for="movieLanguage"> MovieLang:</label>
 <input class="editInput"  id="movieLanguage" type="text" name="mlang	" value="<%=m.getMlang()%>">
 <br>
 <label class="editLabel" for="movieUrl">Movie Youtube URL:</label>
  <input class="editInput" id="movieUrl" type="text" name="url" value="<%=m.getUrl()%>">
 <br>
 
 <div class="label-container">
    <input type="file" id="movieFile" name="mimage" />
   <label for="movieFile" id="fileInput">
   <i class="fa-solid fa-arrow-up-from-bracket"></i>Upload a file</label>
</div>
 <br>
 <input id="submit" type="submit">
 </form>
      </div>
        <div id="container2">
        <% String image = Base64.getEncoder().encodeToString(m.getMimage()); %>
         <img id="image" src="data:image/jpeg;base64, <%=image%>">
        </div>
</div>

                      
</body>
</html>