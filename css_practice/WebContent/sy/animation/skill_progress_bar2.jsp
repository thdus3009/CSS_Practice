<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니메이션 스킬 프로그래스바</title>

<style type="text/css">
/* Google Web Font */
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
  box-sizing: border-box;
  background-color: #333;
  border-radius: 10px;
  color: #fff;
  box-shadow: 0 0 50px rgba(0, 0, 0, 0.08);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.skill-progress h1 {
  text-align: center;

}
.item {}
.item p {
  overflow: hidden;
  margin-bottom: 5px;
}
.item p span:first-child {
  float: left;
}
.item p span:last-child {
  float: right;
}
.progress {
  border: 1px solid #6cd4c4;
  padding: 5px;
  border-radius: 3px;
}
.progress-level {
  height: 10px;
  background: linear-gradient(to right, #fa709a, #fee140);
  /*animation-name: ani;
  animation-duration: 1s;
  animation-iteration-count: 1;*/
  animation: ani 1s;
  animation-fill-mode: both;
}

@keyframes ani {
  0% {
    width: 0;
  }
}

.skill-progress .item:nth-of-type(1) .progress-level {
  animation-delay: 0s;
}
.skill-progress .item:nth-of-type(2) .progress-level {
  animation-delay: 0.2s;
}
.skill-progress .item:nth-of-type(3) .progress-level {
  animation-delay: 0.4s;
}
.skill-progress .item:nth-of-type(4) .progress-level {
  animation-delay: 0.6s;
}
.skill-progress .item:nth-of-type(5) .progress-level {
  animation-delay: 0.8s;
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