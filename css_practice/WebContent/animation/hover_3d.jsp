<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>앱 UI 레이어 3D 호버 에니메이션</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');

body {
  font-family: 'Raleway', sans-serif;
  color: #222;
  line-height: 1.5em;
  font-weight: 300;
  margin: 0;
  background-color: whitesmoke;
  
  display: flex;
  justify-content: center; /* 수평정렬 */
  align-items: center; /* 수직정렬 */
  height: 100vh;
}
a {
  color: #222;
  text-decoration: none;
}

.container {
	
}

.app-ui {
	border: 1px solid red;
	width: 340px;
	height: 640px;
	transform: rotate(-30deg) skewX(20deg) scale(0.7); /* 중복해서 사용할때는 이어서 작성해주어야한다. skew-기울기 , scale-크기 */
	position: relative;
	box-shadow: 0 0 40px rgba(0,0,0,0.3);
	transition: 0.5s; /* 그림자에대한 transition */
	background-color: #ddd;
}

.app-ui:hover {
	box-shadow: -50px 85px 20px rgba(0,0,0,0.3);
}

.app-ui img {
	position: absolute; /* 쌓아놓기 */
	transition: 0.5s; /* 이미지를 변경할 것이기때문에 hover가 아닌 이미지위치 */
	
}

.app-ui:hover img:nth-child(1) {
	transform: translate(40px, -40px);
	opacity: 0.2;
}
.app-ui:hover img:nth-child(2) {
	transform: translate(80px, -80px);
	opacity: 0.4;
}
.app-ui:hover img:nth-child(3) {
	transform: translate(120px, -120px);
	opacity: 0.6;
}
.app-ui:hover img:nth-child(4) {
	transform: translate(160px, -160px);
}
</style>
</head>
<body>

	<div class="container">
		<div class="app-ui">
			<img src="../image/app-ui-01.jpg">
			<img src="../image/app-ui-02.jpg">
			<img src="../image/app-ui-03.jpg">
			<img src="../image/app-ui-04.jpg"> 
		</div>
	</div>
	
	

</body>
</html>