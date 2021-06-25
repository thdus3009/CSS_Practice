<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>위아래로 분리되는 호버 네비게이션 이펙트</title>

<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');
	@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
	
	body {
		font-family: 'Noto Sans KR', sans-serif;
		background-color: #222;
		line-height: 1.5em;
		font-weight: 300;
		margin : 0;
		background-color : #222;
		
	}
	
	a {
		color: black;
		text-decoration: none;
	}
	
	.items {
		
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	}
	.item {
		width: 300px;
		height: 200px;
		display: inline-block;
		position: relative;
		margin: 10px;
	}
	
	.front {
	    z-index: 1;
    	width: 100%;
		background-color: white;
		text-align: center;
		height: inherit;
	}
	
	.front img {width: 143px; margin-top: 10px; }
	.front h2 {margin-top: 0;}
	
	.back {
		background-color: pink;
		height: inherit;
		text-align: center;
		padding: 20px;
		box-sizing: border-box;
		opacity: 0;
	}	

	.back a {background-color: yellowgreen; color:#fff; padding:5px 15px; border-radius:20px; transition : 0.5s;}
	.back a:hover {background-color: #000;}

	.front,.back{
		position: absolute;
		transition: 0.5s; /* front와 back에 top이라는 속성이 없으면 hover로 top을 움직일수 없다. */
		top: 0;
	}
	
	.item:hover .front{
		top: -48%;
	}
	
	.item:hover .back{
		top: 49%;
		opacity: 1;
	}
	
	.item:hover img{
		animation: ani 1s linear infinite;
	}
	
	@keyframes ani {
		0% {
			transform : scale(1);
		}
		50% {
			transform : scale(1.1);
		}
		100% {
			transform : scale(1);
		}
	}
	
</style>
</head>
<body>

	<div class="items">
	
		<div class="item">
			<div class="front">
				<img src="../image/test_1.svg">
				<h2>Mars</h2>
			</div>
			<div class="back">
				<p>
					화성은 네번째 행성~~~행성중에 하나이다.
				</p>
				<a href="#">Read More</a>
			</div>
		</div>
		
 		<div class="item">
			<div class="front">
				<img src="../image/test_2.svg">
				<h2>Jupiter</h2>
			</div>
			<div class="back">
				<p>
					화성은 네번째 행성~~~행성중에 하나이다.
				</p>
				<a href="#">Read More</a>
			</div>
		</div>
		
		<div class="item">
			<div class="front">
				<img src="../image/test_3.svg">
				<h2>Saturnus</h2>
			</div>
			<div class="back">
				<p>
					화성은 네번째 행성~~~행성중에 하나이다.
				</p>
				<a href="#">Read More</a>
			</div>
		</div>  
		
		
	</div>
</body>
</html>