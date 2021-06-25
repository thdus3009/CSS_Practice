<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>17-3. 탭 메뉴 콘텐츠 만들기4 (slide효과)</title>

<style>
	body {
		display: flex;
		height: 100vh;
		align-items: center;
		justify-content: center;
		
	}
	
	.tab-inner {
		/* border: 1px solid red; */
		width: 300px;
		height: 350px;
		position: relative;
		overflow: hidden;
	}
	
	input[name=tabmenu] {
	 	display: none;
	}
	
	.slide {
		position: relative;
		width: 300px;
		height: 300px;
	}
	
	.slide-inner {		
		position: absolute;
		width: 900px;
		font-size: 0; /* 이미지사이의 공간을 없애준다. */
		top: 0;
		left: 0;
		transition: 0.5s;
	}
	
	.btn {
		position: absolute;
		bottom: 10px;
		width: 100%;
		height: 20px;	
		text-align: center;
	}
	
	.btn label {
		display: inline-block;
		width: 20px;
		height: 20px;
		background-color: lightgray;
		border-radius: 50%;
		
	}
	
	input[id=tab1]:checked ~ .slide .slide-inner {
		left: 0px;
	}
	input[id=tab2]:checked ~ .slide .slide-inner {
		left: -300px;
	}
	input[id=tab3]:checked ~ .slide .slide-inner {
		left: -600px;
	}
	
	input[id=tab1]:checked ~ .btn label[for=tab1] ,
	input[id=tab2]:checked ~ .btn label[for=tab2] ,
	input[id=tab3]:checked ~ .btn label[for=tab3] {
		background-color: red;
	}
</style>
</head>
<body>
	<div class="tab-inner">
		<input type="radio" name="tabmenu" id="tab1" checked>
		<input type="radio" name="tabmenu" id="tab2">
		<input type="radio" name="tabmenu" id="tab3">
		
		<div class="slide">
			<div class="slide-inner">
				<a><img src="../image/slide-01.jpg"></a>
				<a><img src="../image/slide-02.jpg"></a>
				<a><img src="../image/slide-03.jpg"></a>
			</div> 
		</div>
		
		<div class="btn">
			<label for="tab1"></label>
			<label for="tab2"></label>
			<label for="tab3"></label>
		</div>
	</div>
</body>
</html>