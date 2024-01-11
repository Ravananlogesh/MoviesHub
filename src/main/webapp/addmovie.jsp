<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

      <h1>Add Movies</h1>
      <form action="moviepage" method="post" enctype="multipart/form-data" id="formstyle">
        Movie Name: <input type="text" name="mname">
      <br><br>
        Movie Price: <input type="number" name="mprice">
      <br><br>
        Movie Genre: <input type="text" name="mgenre">
      <br><br>
        Movie Language: <input type="text" name="mlang">
      <br><br>
        Movie Image: <input type="file" name="mimage">
      <br><br> <input type="submit">

	</form>


</body>
</html>