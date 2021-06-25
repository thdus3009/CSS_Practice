<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3. 더블 보더 레디어스 애니메이션</title>

<style type="text/css">
	body {
		display: flex;
		height: 100vh;
		flex-direction: row;
		justify-content: center;
		align-items: center;
		background-color: #333;
	}
	
	.square {
		width: 400px;
		height: 400px;
		position: relative;
	}
	
	.square span {
		position: absolute;
		width: 100%;
		height: 100%;
		border: 1px solid white;
		border-radius: 40% 60% 65% 35% / 40% 45% 55% 60%;
		
		transition : 0.5s /* 마우스 hovor했을때의 transition이다. (애니메이션 나타나는 속도) */
	}
	
	.square span:nth-child(1) {
		animation : square 4s linear infinite;
	}
	
	.square span:nth-child(2) {
		animation : square 6s linear infinite;
		animation-direction : reverse; /* 역방향 애니메이션 */
	}
	
	.square span:nth-child(3) {
		animation : square 10s linear infinite;
	}
	
	@keyframes square {
		  0% {
		    transform: rotate(0deg); /* scale > 크기 */
		  }

		  100%{
		  	transform: rotate(360deg);
		  }
	}
	
	.square:hover span{
		background-color: crimson;
		border: none;
	}
	
	.square:hover span:nth-child(1){
		opacity : 0.25;
	}
	.square:hover span:nth-child(2){
		opacity : 0.5;
	}
	.square:hover span:nth-child(3){
		opacity : 0.75;
	}
	
	.content {
		font-weight: 600;
		color: white;
		position : absolute;
		top: 116px;
		left : 3px;
		text-align: center;
	}
	
	.content a {
		color:white; 
		border: 1px solid white;
		border-radius: 40% 60% 65% 35% / 40% 45% 55% 60%;
		padding: 14px;
	}
	
	 a:link {text-decoration: none;}
	 a:visited {text-decoration: none;}
	 a:hover {text-decoration: none;}

		
</style>

</head>
<body>
	<div class="square">
		<span></span>
 		<span></span>
		<span></span> 
		
		<div class="content">
			<h2>Company Profile</h2>
			<p>
				This is gallery360 Company Profile. 
				We always challenge and try new things.
			</p>
			<br><br>
			<a href="#">Read More</a>
		</div>
	</div>
</body>
</html>