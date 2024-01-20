<%@page import="java.util.Base64"%>
<%@page import="com.java.dto.Movie"%>
<%@page import="java.util.List"%>
<%@page import="com.java.dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieHub</title>
<link rel="shortcut icon" href="images/logo.png">
<link rel="stylesheet" href="CSS/	UserHome.css">
<script src="JS/home.js"></script>
<script src="https://kit.fontawesome.com/4080ed022e.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<div id=nav-container>
		<nav id=first-nav>
			<a class="nav-link" href="#header">Home</a> <a class="nav-link"
				href="#contact">Contact</a> <a class="nav-link" href="#about">About
				Us</a>
		</nav>
		<nav id=last-nav>
			<a id="user" class="nav-link1" href="UserLogin.jsp">User</a> <a
				class="nav-link1" href="alogin.jsp">Admin</a>
		</nav>

	</div>



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

				</table>
			</div>
		</div>
		<%
		}
		}
		%>



	</header>


	<footer id="footer">
		<h2 id="footer-head">MovieHub</h2>
		<div id="network">
			<a class="foot-link" href="https://github.com/Ravananlogesh"><i
				class="fa-brands fa-github"></i></a> <a class="foot-link"
				href="https://www.linkedin.com/in/logesh-kumar-36a0701b2/"><i
				class="fa-brands fa-linkedin"></i></a> <a class="foot-link" href="#"><i
				class="fa-brands fa-instagram"></i></a>
		</div>
		<div id="footer-page">

			<div>
				<h4>Web-App</h4>
				<p class="foot-content">
					<a class="foot-link" href="#">About</a>
				</p>
				<p class="foot-content">
					<a class="foot-link" href="#">Contact</a>
				</p>
			</div>

			<div>
				<h4>Contact</h4>
				<p class="foot-content">
					<a class="foot-link" href="#">Contact Support </a>
				</p>
				<p class="foot-content">
					<a class="foot-link" href="#">Email</a>
				</p>

			</div>

			<div>
				<h4>Legal</h4>
				<p class="foot-content">
					<a class="foot-link" href="#">Privacy Policy</a>
				</p>
				<p class="foot-content">
					<a class="foot-link" href="#">Terms of Use</a>
				</p>
			</div>

		</div>
		<br>
		<div>
			<p id="copyright">Copyrights &copy; 2024 RavananTech. All rights
				reserved.</p>
		</div>
	</footer>
</body>

</html>