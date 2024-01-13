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
</head>
<body>
<%Movie m=(Movie)request.getAttribute("movie"); %>

<form action="updatemovie" method="post" enctype="multipart/form-data">

 
 MovieId: <input type="number" name="mid" value="<%=m.getMid() %>" readonly>
 <br>
 MovieName: <input type="text" name="mname" value="<%=m.getMname()%>">
 <br>
 MoviePrice: <input type="number" name="mprice" value="<%=m.getMprice()%>">
 <br>
 MovieGenre: <input type="text" name="mgenre" value="<%=m.getMgenre()%>">
 <br>
 MovieLang: <input type="text" name="mlang" value="<%=m.getMlang()%>">
 <br>
 MovieImg: <input type="file" name="mimage">
 <br>
 <input type="submit">
 </form>
 <% String image = Base64.getEncoder().encodeToString(m.getMimage()); %>
<img src="data:image/jpeg;base64, <%=image%>" height="200px" width="200px">
  
</body>
</html>