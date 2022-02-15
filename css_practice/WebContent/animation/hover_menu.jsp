<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5. 오버한 메뉴 외 나머지 흐려지는 네비게이션</title>

<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');
	@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
	
	body {
		font-family: 'Raleway', sans-serif;
		background-color: royalblue;
		
	}
	
	a {
		color: #222;
		text-decoration: none;
	}
	
	.gnb {
		position: absolute;
		left: 50px;
		top: 50%;
		transform : translateY(-50%);

	}
	
	.gnb a {
		display: block;
		font-size: 40px;
		margin: 30px 0 ;
		color: white;
		transition : 0.5s;
	}
	
	
	.gnb:hover a {
		opacity: 0.3;
	}
	.gnb a:hover {/* 순서대로 적용 , 순서중요 */
		opacity: 1;
		
	}
	
	
	.gnb a:hover:before {
		opacity: 1;
	}
	.gnb a:before {
		content: '\f105';
		font-family: fontawesome;
		margin-right: 15px;
		opacity: 0;
	}

</style>
</head>
<body>

	<!-- 네비게이션바 : gnb라고 부른다. -->
	<div class="gnb">
		<a href="#">Spring</a>
		<a href="#">Summer</a>
		<a href="#">Autumn</a>
		<a href="#">Winter</a>
		<a href="#">Soyeon</a>
	</div>
</body>
</html>