<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>17-1. 탭 메뉴 콘텐츠 만들기2</title>

<style type="text/css">
	body {
		display: flex;
		height: 100vh;
		justify-content: center;
		align-items: center;
	}
	
	.tab_inner {
		border : 1px solid red;
		width : 300px;
		height: 350px;
		position: relative;
		
		overflow: hidden;
	}
	
	input[name=tabmenu] {
		display: none;	
	}
	
	.content {
		/* display: none; */
		visibility : hidden; /* display:none과 비슷한 기능이지만 존재는 사라지되 공간차지를 시켜준다. */
		position: absolute; /* 그림3개가 한자리에 다 뭉친다. */
		top: 0;
		left: -50px;
		opacity: 0;
		transition : 0.5s;
	}
	
	.btn {
	/* absolute를 하게되면 해당 크기가 줄어든다. / 늘리기 위해서는 width나 height값을 주어야 한다. */
		position: absolute; 
		width: 100%;
		bottom: 10px;
		text-align: center;
		
	}
	
	.btn label {
		background-color: lightgray;
		width: 20px;
		height: 20px;
		border-radius: 50%;
		display: inline-block;
		cursor: pointer;
	}
	
	input[id=tab1]:checked ~ .slide1 ,
	input[id=tab2]:checked ~ .slide2 ,
	input[id=tab3]:checked ~ .slide3 {
		opacity: 1; visibility: visible; left: 0;
	}
	input[id=tab1]:checked ~ .btn label[for=tab1] ,
	input[id=tab2]:checked ~ .btn label[for=tab2] ,
	input[id=tab3]:checked ~ .btn label[for=tab3] {
		background-color: red;
	}
	
	.heading {
		margin: 15px;
		
	}
	
	.text1, .text2, .text3 {
		position: absolute;
		width: 100px;
		height: 100px;
		color: white;
		background-color: crimson;
		font-weight: bold;
		border-radius: 50%;
		font-size: 30px;
		text-align: center;
		padding-top: 14px;
		box-sizing: border-box;
		transform : translateY(-50px);
		opacity: 0;
		transition : 0.5s;
		
	}
	.text1 span, .text2 span, .text3 span
	 {
		display: block;
		font-size: 20px;
	}
	input[id=tab1]:checked ~ .heading .text1,
	input[id=tab2]:checked ~ .heading .text2,
	input[id=tab3]:checked ~ .heading .text3 {
		transform : translateY(0);
		opacity: 1;
		transition-delay : 0.2s;
	}
</style>
</head>
<body>

	<div class="tab_inner">
		<!-- 라디오 버튼은 동일한 네임값을 가져야 하나만 체크된다. -->
		<input type="radio" name="tabmenu" id="tab1" checked>
		<input type="radio" name="tabmenu" id="tab2">
		<input type="radio" name="tabmenu" id="tab3">
		
		<div class="content slide1">
			<a href="#none1">
				<img src="../image/slide-01.jpg">
			</a>
		</div>
		<div class="content slide2">
			<a href="#none2">
				<img src="../image/slide-02.jpg">
			</a>
		</div>
		<div class="content slide3">
			<a href="#none3">
				<img src="../image/slide-03.jpg">
			</a>
		</div> 
		
 		<div class="heading"><div class="text1">Sale <span>50%</span></div></div>
		<div class="heading"><div class="text2" style="background-color: royalblue;">Sale <span>40%</span></div></div> 
		<div class="heading"><div class="text3" style="background-color: yellowgreen;">Sale <span>30%</span></div></div>
		
		<!-- bullet 아이콘들은 label로 만들기 -->
		<div class="btn">
			<label for="tab1"></label>
			<label for="tab2"></label>
			<label for="tab3"></label>
		</div>
	</div>


</body>
</html>