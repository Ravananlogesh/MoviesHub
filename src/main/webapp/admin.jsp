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



</style>
</head>
<body>

	<div id="scroll-container">

		<%
		MovieDAO dao = new MovieDAO();
		List<Movie> movie = dao.getAllMovie();
		int limit = 20;
		if (movie != null) {
			for (int i = 0; i < movie.size(); i++) {
				String base64image = new String(Base64.getEncoder().encode(movie.get(i).getMimage()));
		%>
		<div class="scroll-movie"
			onmouseover="changeBackground('data:image/jpeg;base64,<%=base64image%>')"
			onclick="playVideo('frame', 'overlay', '<%=movie.get(i).getUrl()%>')">
			<a> <img alt="" class="movie"
				src="data:image/jpeg;base64,<%=base64image%>">
			</a> <img class="playButton" alt="" height="40px" width="40px"
				src="images/play.png">
		</div>

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
					frameborder="0" autoplay allowfullscreen></iframe>
			</div>
		</div>

	</div>

	<header id="header">
		<div id="add-container">
			<a id="add-movie" href="addmovie"> <img id="add-link-image"
				src="images/add.png" height="100px" width="100px">
			</a>
		</div>

		<%
		if (movie != null) {
			for (int i = 0; i < movie.size(); i++) {
				String base64image = new String(Base64.getEncoder().encode(movie.get(i).getMimage()));
		%>

		<div id="head-container">

			<div id="head-img"
				onclick="playVideo('frame', 'overlay', '<%=movie.get(i).getUrl()%>')">
				<img id="home-img" src="data:image/jpeg;base64,<%=base64image%>">
				<img class="play" height="40px" width="40px" src="images/play.png">
			</div>

			<div id="head-content">
				<h4 id="movie-name"><%=movie.get(i).getMname()%></h4>
				<table style="margin-left: 20px;">

					<tr>
						<td>Price</td>
						<td>: <%=movie.get(i).getMprice()%></td>
					</tr>
					<tr>
						<td>Language</td>
						<td>: <%=movie.get(i).getMlang()%></td>
					</tr>
					<tr>
						<td>Genre</td>
						<td>: <%=movie.get(i).getMgenre()%>
						</td>
					</tr>
					<tr>
						<td><a class="colborder"
							href="deletemovie?id=<%=movie.get(i).getMid()%>">Delete </a></td>
						<td><a  class="colborder" href="editmovie?id=<%=movie.get(i).getMid()%>">Edit
								movie </a></td>
					</tr>

				</table>
			</div>
		</div>
		<%
		}
		}
		%>\
	</header>

	<br>


</body>
</html>