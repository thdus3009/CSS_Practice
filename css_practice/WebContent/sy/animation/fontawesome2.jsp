<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12. fontawesome사용한 input입력필드</title>
<style type="text/css">
/* Google Web Font */
@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');

/* Fontawesome 4.7 */
@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');

body {
	display : flex;
	height: 100vh;
	justify-content: center;
	align-items: center;
}

.item {
	/* border: 1px solid red; */
	width: 300px;	
	margin-bottom: 10px;
	position: relative;
}

.item input {
	border: 1px solid lightgray;
	height: 40px;
	width: inherit; /* 부모요소를 그대로 상속받는다는 의미 */
	border-radius: 5px;
	padding: 10px;
	/* 정해진 width, height를 벗어나지 못하게 하기 */
	box-sizing: border-box; /* 기본값 : content-box */
	
	padding-left: 50px;
	outline: none; /* 클릭했을때 컬러나오는거 */
	
	transition : 0.3s;
}
.item .fa {
	position: absolute;
	top: 0;
	left: 0;
	color: white;
	background-color : gray;
	border-radius : 5px 0 0 5px;
	
	font-size: 20px;
	/* 가운데정렬 */
	text-align: center;
    line-height: 40px;
	/* 공간만들기 */
	width: 40px;
	height: 40px;
	
}

.item input:focus { /* focus는 input에서만 사용할 수 있다. */
	border: 1px solid dodgerblue;
	box-shadow: 0 0 5px dodgerblue;
}

/* focus시 아이콘 컬러 변경 : 인접선택자(+) */
/* 위 인접 선택자는 선택할 수 없고 아래 인접 선택자일때만 선택할 수 있다. */
.item input:focus + .fa {
	background-color : dodgerblue;
}

/* :: 자기자신의 요소를 변경 , 띄어쓰기가 없는 건 자기자신을 의미 */
.item input:focus::placeholder {
	visibility: hidden;
}

</style>
</head>
<body>

	<form class="info">
		<div class="item">
			<input type="text" placeholder="Your Name">
			<i class="fa fa-user"></i>
		</div>
		<div class="item">
			<input type="email" placeholder="Email"> <!-- email 형태가 아니면 오류 -->
			<i class="fa fa-envelope"></i>
		</div>
		<div class="item">
			<input type="tel" placeholder="Phone Number"> <!-- 숫자이외의 값이 들어오면 오류 -->
			<i class="fa fa-phone"></i>
		</div>
		
		
	</form>

</body>
</html>