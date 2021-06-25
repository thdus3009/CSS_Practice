<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10. SNS 아이콘 애니메이션</title>

<style type="text/css">
/* Google Web Font */
@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');

/* Fontawesome 4.7 */
@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

body {
  font-family: 'Raleway', sans-serif;
  line-height: 1.5em;
  margin: 0;
  font-weight: 300;
  color: #222;

  display: flex;
  flex-direction: column;
  
  justify-content: center;  
  align-items: center; 
  height: 100vh;
  
}
a {
  text-decoration: none;
  color: #222;
}
	
	
.sns { /* 박스 */
	background-color: #eee;
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0,0,0, 0.13);
	margin-top: 25px;
}

.sns a { /* 동그라미 */
	border: 5px solid white;
	display: inline-block; /* a태그는 inline요소여서 크기값을 줄수없다 > inline-block으로 변경 */
	width: 80px;
	height: 80px;
	border-radius: 50%;
	background-color: #fff;

	position: relative;
	margin: 10px;
	/* 부모요소보다 자식요소가 넘치는 경우, 넘치는 부분은 잘려서 보여지지 않습니다.  */
	overflow: hidden; 
}


 .sns a:before {
	content :"";
	position: absolute;
	width : 105%;
	height: 105%;
	top:-2px;
	left:-2px;
	background-color: white;
	transition : 0.5s;
} 
	
 .sns a:hover:before {
	height: 0px;
}	
	
 .sns a:nth-child(1) {
 	background-color: #3b5999;
 }
 .sns a:nth-child(2) {
 	background-color: #55acee;
 }
 .sns a:nth-child(3) {
 	background-color: #dd4b39;
 }
 .sns a:nth-child(4) {
 	background-color: #0077b5;
 }
  .sns a:nth-child(5) {
 	background: linear-gradient(#744999,#e22484,#e8442f,#f0c441);
 }
 	
/* 폰트부분 */
.sns a .fa {
	position: relative;
 	top : 50%;
	left : 50%;
	transform: translate(-50%,-50%);
	font-size: 40px;
	color: black; 
	transition : 0.5s;
}

.sns a:hover .fa {
	transform: translate(-50%,-50%) rotateY(360deg); /* transform 여러개 쓸때는 이렇게! */
	color: white;
}	
 	
</style>
</head>
<body>
<div>
* 아래에서 위로 채워지기
<!-- 보통 채워지는 애니메이션은 before&after를 이용한 background라고 보면된다. -->
</div>

<div class="sns">
	<a href="#"><i class="fa fa-facebook-f"></i></a>
	<a href="#"><i class="fa fa-twitter"></i></a>
	<a href="#"><i class="fa fa-google-plus"></i></a>
	<a href="#"><i class="fa fa-linkedin"></i></a>
	<a href="#"><i class="fa fa-instagram"></i></a>
</div>

</body>
</html>



