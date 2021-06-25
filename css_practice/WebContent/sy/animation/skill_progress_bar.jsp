<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니메이션 스킬 프로그래스바</title>

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');

	body {
	  font-family: 'Raleway', sans-serif;
	  line-height: 1.5em;
	  margin: 0;
	  background-color: #fff;
	}
	a {
	  text-decoration: none;
	}
	
	.skill-progress {
		width: 500px;
		padding: 20px;
		background-color: #333;
		border-radius: 10px;
		color: #fff;
		box-shadow: 0 20px 50px rgba(0,0,0,0.08);
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		
	}
	
	.skill-progress h1 {
	text-align: center;
	
	}
	
	.item {
		 
	}	

	.item p {
		/* border: 1px solid #fff; */
		overflow:hidden;
		margin-bottom: 0;
	}	
	
	
	/* 자식요소에 float가 있다면 부모는 높이값을 잃는다. > 해결하는 방법: 부모요소에 overflow:hidden을 해준다. */
	.item p span:nth-child(1){
		float : left;
	}

	.item p span:nth-child(2){
		float : right;
	}
	
	.progress {
		border: 1px solid #6cd4c4;
		padding: 5px;
		border-radius:3px;
	}
	
	.progress .progress-level {
		height: 10px;
		background: linear-gradient(to right, crimson, gold);
		
		animation-name : ani; /* 애니메이션 이름 */
		animation-duration: 1s; /* 애니메이션 실행하는데 걸리는 시간 */
	}
	
	@keyframes ani {
		0% {
			width: 0;
		}
		
	}
</style>
</head>
<body>

	<div class="skill-progress">
		<h1>SOFTWARE SKILL</h1><!-- 제목 -->
		
		<div class="item">
			<p> <!-- 프로그래스바 이름, 퍼센트 -->
				<span>HTML</span><span>90%</span>
			</p>
			<!-- 프로그래스바 라인 -->
			<div class="progress">
				<div class="progress-level" style="width: 90%;"></div>
			</div>
		</div>
		
		<div class="item">
			<p>
				<span>CSS3</span><span>80%</span>
			</p>
			<div class="progress">
				<div class="progress-level" style="width: 80%;"></div>
			</div>
		</div>
		
		<div class="item">
			<p>
				<span>jQuery</span><span>65%</span>
			</p>
			<div class="progress">
				<div class="progress-level" style="width: 65%;"></div>
			</div>
		</div>
		
		<div class="item">
			<p>
				<span>Photoshop</span><span>70%</span>
			</p>
			<div class="progress">
				<div class="progress-level" style="width: 70%;"></div>
			</div>
		</div>
		
		<div class="item">
			<p>
				<span>Illustrator</span><span>90%</span>
			</p>
			<div class="progress">
				<div class="progress-level" style="width: 90%;"></div>
			</div>
		</div>
		
	</div>

</body>
</html>