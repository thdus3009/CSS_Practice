<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2. 도형 로딩 애니메이션 - 02</title>

<style type="text/css">
  	 body {
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
		height: 100vh;
  	 }
  	 
  	 .loading {
  	 	/* border: 1px solid red;  */ 
  	 	width: 126px;
  	 	height: 52px; 
  	 	position: relative;
  	 	text-align: center;
  	 	line-height: 49px;
  	 	font-weight: 700;
  	 }

	.loading span {
		position: absolute;
		width: 10px;
		height: 10px;
		background-color: gray;
		/* animation: loading	2s linear infinite; */  /* linear > 부드럽게, 처음부터 끝까지 같은 속도 */
		animation: loading	2s infinite;
	}
	
	.loading span:nth-child(1) {
	}
	.loading span:nth-child(2) {
		animation-delay : 1s;
	}
	
	@keyframes loading{ /* animation을 해주기위해서는 left:0 > right:0으로 하면 안되고(애니메이션이 먹질 않는다.) left:0 > left:100%으로 해주어야 한다. */
		0%{
			top : 0;
			left : 0;
			background-color: red;
		}
		25%{
			top : 0;
			left :  calc(100% - 10px); /* 그냥 100% - 10px 하면 먹지 않는다. calc를 쓰면 계산식을 사용할 수 있다. // 계산식 사이에 띄어쓰기 안하면 반응안할 수 있음 !! */
			background-color: cornflowerblue;
		}
		50%{
			top : calc(100% - 10px);
			left : calc(100% - 10px);
			background-color: yellow;
		}
		75%{
			top : calc(100% - 10px);
			left : 0;
			background-color: yellowgreen;
		}
		100%{
			top: 0;
			left: 0;
			background-color: red;
		}
	}  	 
</style>
</head>
<body>

	<div class="loading">
		Gallery360
		<span></span>
		<span></span>
	</div>

</body>
</html>