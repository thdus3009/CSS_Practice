<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>17.탭 메뉴 콘텐츠 만들기</title>

<style type="text/css">
	body {
		display: flex;
		height: 100vh;
		justify-content: center;
		align-items: center;
	}
	
	.tab_inner {
		/* border : 1px solid red; */
		width : 300px;
		height: 350px;
		position: relative;
	}
	
	input[name=tabmenu] {
		display: none;	
	}
	
	.content {
		display: none;
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
	
	input[id=tab1]:checked ~ .slide1 {
		display: block;
	}
	input[id=tab2]:checked ~ .slide2 {
		display: block;
	}
	input[id=tab3]:checked ~ .slide3 {
		display: block;
	}
	input[id=tab1]:checked ~ .btn label[for=tab1] {
		background-color: red;
	}
	input[id=tab2]:checked ~ .btn label[for=tab2] {
		background-color: red;
	}
	input[id=tab3]:checked ~ .btn label[for=tab3] {
		background-color: red;
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
			<img src="../image/slide-01.jpg">
		</div>
		<div class="content slide2">
			<img src="../image/slide-02.jpg">
		</div>
		<div class="content slide3">
			<img src="../image/slide-03.jpg">
		</div>
		
		<!-- bullet 아이콘들은 label로 만들기 -->
		<div class="btn">
			<label for="tab1"></label>
			<label for="tab2"></label>
			<label for="tab3"></label>
		</div>
	</div>


</body>
</html>