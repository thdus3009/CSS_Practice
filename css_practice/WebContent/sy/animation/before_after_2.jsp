<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9. 애니메이션 호버 네비게이션 이펙트</title>

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
  background-color: #f4f4f4;
  
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  
  flex-direction: column;
}

a {
  text-decoration: none;
  color: #222;
}

.gnb {
	list-style: none;
	margin-top: 20px;
	width: 600px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
	display: flex;
	padding: 16px;
	
}

.gnb li {
	flex: 1; /* flex-grow, flex-shrink, flex-basis를 한 번에 쓸 수 있는 축약형 속성 */
	text-align: center;
}

/* 부모요소 */
.gnb li a {
	position: relative;
}

/* 해당클래스의 자식요소 */
.gnb li a:before {
	content: '';
	background-color: #4169E1;
	height: 2px;
	width: 0;
	position: absolute;
    bottom: -8px;
    transition : 0.5s;
    
    /* 중앙정렬 transform 활용 */
    left: 50%;
    transform: translateX(-50%);
}

.gnb li a:hover:before {
	width: 100%;
}

</style>

</head>
<body>
	<div>
		- 중앙에서부터 점점 커지는 border <br>
		> border처럼 보이지만 before&after로 만든 가상 클래스의 background이다.
	</div>
	
	<div>
		<ul class="gnb">
			<li><a href="#">HOME</a></li>
			<li><a href="#">ABOUT</a></li>
			<li><a href="#">SERVICE</a></li>
			<li><a href="#">PORTFOLIO</a></li>
			<li><a href="#">CONTACT</a></li>
		</ul>
	</div>

</body>
</html>