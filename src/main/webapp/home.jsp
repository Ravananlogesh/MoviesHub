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

#scroll-container {
	overflow-x: auto;
	background: url("images/container.webp") no-repeat fixed;
	background-size: cover;
	background-attachment:scroll;
	white-space: nowrap;
	height: 500px;
	align-items: center;
}
#scroll-container::before{
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    height: 500px;
    background-color: rgba(29, 34, 113, 0.4);
}
.scroll-movie {
	border: 1px solid black;
	position: relative;
	height: 190px;
	width: 290px; display : inline-block;
	margin-left: 60px;
	border-radius: 15px;
	margin-top: 200px;
	transition: all 0.2s;
	display: inline-block;
}

#scroll-container::-webkit-scrollbar {
	display: none;
}

.movie {
	position: relative;
	border-radius: 15px;
	height: 190px;
	width: 290px;
	transition: all 0.2s;
	border-radius: 15px;
}

.scroll-movie:hover, .movie:hover {
	border-radius: 0px;;
	transform: scale(1.05);
}

#overlay {
	display: none;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 700px;
	height: 600px;
	z-index: 1000;
	border: 1px solid black;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

.closeBtn {
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 10px; background-color : red; cursor : pointer;
	font-weight: 900;
	cursor: pointer;
	background-color: red;
}

.videoContainer {
	width: 100%;
	height: 100%;
}

.videoFrame {
	width: 100%;
	height: 100%;
	border: 0;
}
.playButton{
position: absolute;
left:45%;
top: 40%;
cursor: pointer;
}
</style>
</head>
<body>

	<div id="scroll-container">
		<div class="scroll-movie"
			onmouseover="changeBackground('images/battle.jpg')"
			onclick="playVideo('frame', 'overlay', 'https://www.youtube.com/embed/cp3646Zf8rg?si=gN5m-BxnuQZSaLgW')">
			<a href="#"> <img class="movie" alt="" src="images/battle.jpg">
			</a>
			<img class="playButton" alt="" height="40px" width="40px" src="images/play.png">
		</div>

		<div class="scroll-movie"
			onmouseover="changeBackground('images/avatar.webp')"
			onclick="playVideo('frame', 'overlay', 'https://www.youtube.com/embed/d9MyW72ELq0?si=g-rmVbY2R4DA6x-h')">
			<a href="#"> <img class="movie" alt="" src="images/avatar.webp">
			<img class="playButton" alt="" height="40px" width="40px" src="images/play.png">
			</a>

		</div>


		<div class="scroll-movie"
			onmouseover="changeBackground('images/batman.webp')"
			onclick="playVideo('frame', 'overlay', 'https://www.youtube.com/embed/0WWzgGyAH6Y?si=HL_kYiy_Bie9kedH')">
			<a href="#"> <img class="movie" alt="" src="images/batman.webp">
			</a>
			<img class="playButton" alt="" height="40px" width="40px" src="images/play.png">
		</div>

		<div class="scroll-movie"
		onmouseover="changeBackground('images/intersteller.jpg')"
			onclick="playVideo('frame', 'overlay', 'https://www.youtube.com/embed/d9MyW72ELq0?si=EwnKfgcst9A-QntH')">
			<a href="#"> <img class="movie" alt="" src="images/intersteller.jpg">
			</a>
			<img class="playButton" alt="" height="40px" width="40px" src="images/play.png">
			</div>
		<div class="scroll-movie">
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		<div class="scroll-movie">
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		<div class="scroll-movie">
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		<div class="scroll-movie">
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		<div class="scroll-movie">
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		<div class="scroll-movie">
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		<div class="scroll-movie">
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		<div class="scroll-movie">
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		<div class="scroll-movie">
		<img class="playButton" alt="" height="40px" width="40px" src="images/play.png"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div class="scroll-movie"></div>
		<div id="overlay">
			<div class="closeBtn" onclick="closeVideo('frame', 'overlay')">X</div>
			<div class="videoContainer">
				<iframe id="frame" class="videoFrame" src=""
					title="YouTube video player"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					frameborder="0" allowfullscreen></iframe>
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
			MovieDAO dao = new MovieDAO();
			List<Movie> movie = dao.getAllMovie();
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


	<a href="addmovie.jsp"> ADD_MOVIE </a>


</body>
</html>