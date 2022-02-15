<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아코디언 네비게이션</title>

<style type="text/css">
/* Google Web Font */
@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');
/* Fontawesome 4.7 */
@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

body {
  font-family: 'Raleway', sans-serif;
  line-height: 1.5em;
  margin: 0;
}
a {
  text-decoration: none;
}

.gallery {
	list-style: none;
	padding: 0;
	margin: 0;
	display: flex;
	height: 100vh;
}
.gallery li {
	border-right : 5px solid #000;
	flex: 1; /* 마우스를 올리면 이 flex 숫자가 올라간다. */
	transition-duration : 0.5s;
	position: relative;
	overflow: hidden;
}
.gallery li:last-child {
	border-right:none;
}

.gallery li:nth-child(1) {
	background: url(../image/artistic-image-01.jpg) no-repeat center center;
}
.gallery li:nth-child(2) {
	background: url(../image/artistic-image-02.jpg) no-repeat center center;
}
.gallery li:nth-child(3) {
	background: url(../image/artistic-image-03.jpg) no-repeat center center;
}
.gallery li:nth-child(4) {
	background: url(../image/artistic-image-04.jpg) no-repeat center center;
}
.gallery li:nth-child(5) {
	background: url(../image/artistic-image-05.jpg) no-repeat center center;
}

.gallery li:hover {
	flex: 3;
	filter: grayscale(1);
}

.gallery li:hover .content{
	bottom: 0;
	transition-delay:0.2s;
}

.content {
	position: absolute;
	background-color: black;
	color: white;
	height: 250px;
	bottom: -400px; /* 삼각형모양때문에 bottom을 더 내려야함 */
	transition : 0.5s;
	padding: 20px;
	text-align: center;
}

.sns a {
	color: #333;
}

/* before, after로 삼각형모양 넣기 */
.content:before {
	content: '';
	position: absolute;
	background-color: black;
	width: 100%;
	height: 80px;
	left:0;
	top: -30px;
	/* transform-origin > 어디를 기준으로 잡고 할것인지 */
	transform-origin: left bottom;
	transform: rotate(-3deg) scale(1.3);
}

</style>
</head>
<body>
<ul class="gallery">
	<li>
		<div class="content">
			<h2>Uploads made easy</h2>
			<p>Use Spotify for Artists to upload your releases. With previews and simple edits, you can control exactly how your music appears to divsteners.</p>
			 <div class="sns">
	          <a href="#none"><i class="fa fa-facebook-square"></i></a>
	          <a href="#none"><i class="fa fa-instagram"></i></a>
	          <a href="#none"><i class="fa fa-linkedin-square"></i></a>
	          <a href="#none"><i class="fa fa-google-plus-square"></i></a>
	        </div>
		</div>
	</li>
	<li>
				<div class="content">
			<h2>Uploads made easy</h2>
			<p>Use Spotify for Artists to upload your releases. With previews and simple edits, you can control exactly how your music appears to divsteners.</p>
			 <div class="sns">
	          <a href="#none"><i class="fa fa-facebook-square"></i></a>
	          <a href="#none"><i class="fa fa-instagram"></i></a>
	          <a href="#none"><i class="fa fa-linkedin-square"></i></a>
	          <a href="#none"><i class="fa fa-google-plus-square"></i></a>
	        </div>
		</div>
	</li>
	<li>
			<div class="content">
			<h2>Uploads made easy</h2>
			<p>Use Spotify for Artists to upload your releases. With previews and simple edits, you can control exactly how your music appears to divsteners.</p>
			 <div class="sns">
	          <a href="#none"><i class="fa fa-facebook-square"></i></a>
	          <a href="#none"><i class="fa fa-instagram"></i></a>
	          <a href="#none"><i class="fa fa-linkedin-square"></i></a>
	          <a href="#none"><i class="fa fa-google-plus-square"></i></a>
	        </div>
		</div>
	</li>
	<li>
			<div class="content">
			<h2>Uploads made easy</h2>
			<p>Use Spotify for Artists to upload your releases. With previews and simple edits, you can control exactly how your music appears to divsteners.</p>
			 <div class="sns">
	          <a href="#none"><i class="fa fa-facebook-square"></i></a>
	          <a href="#none"><i class="fa fa-instagram"></i></a>
	          <a href="#none"><i class="fa fa-linkedin-square"></i></a>
	          <a href="#none"><i class="fa fa-google-plus-square"></i></a>
	        </div>
		</div>
	</li>
	<li>
			<div class="content">
			<h2>Uploads made easy</h2>
			<p>Use Spotify for Artists to upload your releases. With previews and simple edits, you can control exactly how your music appears to divsteners.</p>
			 <div class="sns">
	          <a href="#none"><i class="fa fa-facebook-square"></i></a>
	          <a href="#none"><i class="fa fa-instagram"></i></a>
	          <a href="#none"><i class="fa fa-linkedin-square"></i></a>
	          <a href="#none"><i class="fa fa-google-plus-square"></i></a>
	        </div>
		</div>
	</li>
</ul>

</body>
</html>