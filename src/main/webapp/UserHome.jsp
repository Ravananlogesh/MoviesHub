<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MovieHub</title>
<link rel="shortcut icon" href="images/logo.png">
<link rel="stylesheet" href="CSS/UserHome.css">
<script src="JS/home.js"></script>
 
</head>
<body>
      <div id="scroll-container" onload="autoScroll()">
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
	<div id="home-container">
	
	</div>
	
	
</body>
</html>