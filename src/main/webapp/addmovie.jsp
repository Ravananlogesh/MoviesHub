<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieHub</title>
<link rel="shortcut icon" href="images/logo.png">
<link rel="stylesheet" href="CSS/AddImage.css">
</head>
<body onload="loading()">

      <h1>Add Movies</h1>
      <form id="formstyle" action="moviepage" method="post" enctype="multipart/form-data" onsubmit="showLoading()">
        <label for="addName">Movie Name: </label>
        <input class="input-box" id="addName" type="text" name="mname">
      <br><br>
      <label for="addPrice">Movie Price:</label>
         <input class="input-box" id="addPrice" type="number" name="mprice">
      <br><br>
      <label for="addGenre">Movie Genre: </label>
        <input class="input-box" id="addGenre" type="text" name="mgenre">
      <br><br>
      <label for="addLang">Movie Language:</label>
         <input class="input-box" id="addLang" type="text" name="mlang">
      <br><br>
      <label for="addUrl">Movie Youtube URL:</label>
        <input class="input-box" id="addUrl" type="text" name="url">
      <br><br>
      <label for="addImage">Movie Image:</label>
         <input class="input-box" id="addImage" type="file" name="mimage">
      <br><br> <input type="submit">
      <div class="loader" id="loader" style="display: none;"></div>

	</form>
	<script>
	   function loading(){
		   document.body.style.opacity ="1";
	   }
	   function showLoading() {
           document.getElementById("loader").style.display = "block";
       }
	</script>


</body>
</html>