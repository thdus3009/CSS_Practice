<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1. 도형 로딩 애니메이션 - 01</title>

  <link rel="stylesheet" href="<%= request.getContextPath() %>/sy/animation/loading_image.css" />
  
  <style type="text/css">
  
  	  	body {
			display: flex;
			flex-direction: row;
			justify-content: center; /* 가로 */
			align-items: center; /* 세로 */
			height: 100vh;
  	  	}
	  	
	  	.loading {
	  	}
	
		/* span은 높이, 너비 설정할 수 없기 때문에 , inline-block을 넣어서 줄바꿈은 하지않지만 div처럼 공간을 짤 수 있다.*/
		.loading span {
			width: 20px; height: 20px; background-color: gray; display: inline-block; border-radius: 50%;
			animation: loading	1.3s infinite; /* 1초동안 이루어짐 , 딜레이는 0초 (생략가능) infinite > 무한반복*/	
		}
		
		.loading span:nth-child(1) {
			background-color: cornflowerblue;
		}
		.loading span:nth-child(2) {
			animation-delay : 0.3s;
			background-color: pink;
		}
		.loading span:nth-child(3) {
			animation-delay : 0.7s;
			background-color: yellowgreen;
		}
		
		@keyframes loading {
				  0% {
				    opacity: 0; /* 투명도 */
				    transform: scale(0.5); /* scale > 크기 */
				  }
				  50% {
				    opacity: 1;
				    transform: scale(1.2);
				  }
				  100%{
				  	opacity: 0;
				    transform: scale(0.5);
				  }
		}
  
  </style>
</head>
<body>
	<div class="loading">
		<span></span>
		<span></span>
		<span></span>
	</div>
</body>
</html>