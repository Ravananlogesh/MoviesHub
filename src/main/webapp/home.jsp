<%@page import="com.java.dto.Movie"%>
<%@page import="com.java.dao.MovieDAO"%>
<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#moviestyle {
	border: 1px solid black;
	border-collapse:collapse;
	text-align: center;
}
.colborder{
border: 1px solid black;
}


</style>
</head>
<body>

     <div id="scroll-container">
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
           <div id="scroll-movie"></div>
     </div>
	
	<table id="moviestyle">
		<tbody>

			<tr>
				<th  class="colborder">Movie Id</th>
				<th  class="colborder">Movie Name</th>
				<th  class="colborder">Movie Price</th>
				<th  class="colborder">Movie Genre</th>
				<th  class="colborder">Movie Language</th>
				<th  class="colborder">Movie Image</th>
				<th  class="colborder">Delete</th>
				<th  class="colborder">Edit</th>
			</tr>
			<%
			MovieDAO dao = new MovieDAO();
			List<Movie> movie = dao.getAllMovie();
			if (movie != null) {
				for (Movie m : movie) {
			%>
			<tr>
				<td  class="colborder"><%=m.getMid()%></td>
				<td  class="colborder"><%=m.getMname()%></td>
				<td  class="colborder"><%=m.getMprice()%></td>
				<td  class="colborder"><%=m.getMgenre()%></td>
				<td  class="colborder"><%=m.getMlang()%></td>
				<%
				String base64image = new String(Base64.getEncoder().encode(m.getMimage()));
				%>
				<td  class="colborder"><img src="data:image/jpeg;base64,<%=base64image%>"
					height="200px" width="200px"></td>
					
				<td  class="colborder"><a href="deletemovie?id=<%=m.getMid()%>">Delete
				</a></td>
				<td  class="colborder"><a href="editmovie?id=<%=m.getMid()%>">Edit movie
				</a></td>
			</tr>
			<%
			}
			}           
			%>
		</tbody>
	</table>
	
	
	<a href="addmovie.jsp"> ADD_MOVIE </a>
</body>
</html>