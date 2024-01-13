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
<title>MovieHub</title>
<link rel="shortcut icon" href="images/logo.png">

<script src="JS/home.js"></script>
<link rel="stylesheet" href="CSS/AdminHome.css">
<style type="text/css">
body {
	margin: 0px;
}

#moviestyle {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}

.colborder {
	border: 1px solid black;
}
</style>
</head>
<body>

	<div id="scroll-container">
	
		<%
			MovieDAO dao = new MovieDAO();
			List<Movie> movie = dao.getAllMovie();
			int limit=20;
			if (movie != null) {
					for(int i=0;i<movie.size();i++){
						String base64image = new String(Base64.getEncoder().encode(movie.get(i).getMimage()));
			%>	
		<div class="scroll-movie"
		onmouseover="changeBackground('data:image/jpeg;base64,<%=base64image%>')"
		onclick="playVideo('frame', 'overlay', '<%=movie.get(i).getUrl()%>')">
		<a>
		<img alt="" class="movie" src="data:image/jpeg;base64,<%=base64image%>">
		</a>
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		
		<%		
			}
			}
			%>

		<div id="overlay">
			<div class="closeBtn" onclick="closeVideo('frame', 'overlay')">x</div>
			<div class="videoContainer">
				<iframe id="frame" class="videoFrame" src=""
					title="YouTube video player"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					frameborder="0"  autoplay allowfullscreen></iframe>
			</div>
		</div>

	</div>

	<table id="moviestyle">
		<tbody>

			<tr>
				<th class="colborder">Movie Id</th>
				<th class="colborder">Movie Name</th>
				<th class="colborder">Movie Price</th>
				<th class="colborder">Movie Genre</th>
				<th class="colborder">Movie Language</th>
				<th class="colborder">Movie Image</th>
				<th class="colborder">Delete</th>
				<th class="colborder">Edit</th>
			</tr>
			<%
			if (movie != null) {
				for (Movie m : movie) {
			%>
			<tr>
				<td class="colborder"><%=m.getMid()%></td>
				<td class="colborder"><%=m.getMname()%></td>
				<td class="colborder"><%=m.getMprice()%></td>
				<td class="colborder"><%=m.getMgenre()%></td>
				<td class="colborder"><%=m.getMlang()%></td>
				<%
				 String base64image = new String(Base64.getEncoder().encode(m.getMimage()));
				%>
				<td class="colborder"><img
					src="data:image/jpeg;base64,<%=base64image%>" height="200px"
					width="200px"></td>

				<td class="colborder"><a href="deletemovie?id=<%=m.getMid()%>">Delete
				</a></td>
				<td class="colborder"><a href="editmovie?id=<%=m.getMid()%>">Edit
						movie </a></td>
			</tr>
			<%
			}
			}
			%>
		</tbody>
	</table>


	<a id="add-movie" href="addmovie.jsp"> ADD_MOVIE </a>


</body>
</html>