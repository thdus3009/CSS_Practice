<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16.사이드바</title>

<style type="text/css">
	body {
		display: flex;
		height: 100vh;
		align-items: center;
		justify-content: center;
	}
	
	input[id=trigger] {
		display: none; 
	}
	
	label[for=trigger] {
		/* border: 1px solid red; */
		width: 40px;
		height: 30px;
		display: block;
		position: absolute;
		right: 45px;
		top: 45px;
		cursor: pointer;
	}
	label[for=trigger] span {
		width: 100%;
		height: 2px;
		background-color: black;
		position: absolute;
		left: 0;
		transition: 0.3s;
	}
	
	label[for=trigger] span:nth-child(1) {
		top: 0;
	}
	label[for=trigger] span:nth-child(2) {
		top: 50%;
	}
	label[for=trigger] span:nth-child(3) {
		top: 100%;
	}
	
	/* 인접선택자 */
	/* + : 같은 부모를 가지고 바로 뒤에 오는 경우 , ~ : 같은 부모를 가지고 뒤에 오는 경우 */
	input[id=trigger]:checked + label[for=trigger] span:nth-child(1) {
		transform: rotate(45deg);
		top: 50%;
	}
	input[id=trigger]:checked + label[for=trigger] span:nth-child(2) {
		opacity: 0;
	}
	input[id=trigger]:checked + label[for=trigger] span:nth-child(3) {
		transform: rotate(-45deg);
		top: 50%;
	}
	
	/* sidebar */
	.sidebar {
		background-color: black;
		width: 300px;
		height: 100vh;
		position: fixed;
    	top: 0;
	    right: -300px;
	    transition: 0.3s;
	}
	
	input[id=trigger]:checked ~ div[class=sidebar] {
		 right: 0px;
	}
	
	input[id=trigger]:checked + label[for=trigger] {
		right: 315px;
	}
	
</style>
</head>
<body>
	<div class="container">
	<!-- input id와 label의 for는 세트이다. 서로 떨어져 있어도 작동 가능! -->
		<input type="checkbox" id="trigger">
		<label for="trigger">
			<span></span>
			<span></span>
			<span></span>
		</label>
		<!-- checkbox를 선택했을때 선택되는 인접선택자로 설정 > 부모가 같고 같은 라인이어야한다. -->
		<div class="sidebar" style="padding: 50px; box-sizing: border-box;">
			<div style="color: white;">메뉴 선택</div>
		</div>
	</div>

</body>
</html>