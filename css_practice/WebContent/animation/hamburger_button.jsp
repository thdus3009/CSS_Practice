<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15. 햄버거버튼 만들기</title>

<style type="text/css">
	/* Trigger 버튼 */
	body {
		line-height: 1.5em;
		margin:0;
		font-weight: 300;
		display: flex;
		height:100vh;
		justify-content: center;
		align-items: center;
	}
	
	input[id=trigger] {
		 display: none; 
	}
	
 	label[for=trigger] {
	  /* border: 1px solid red; */
	  width: 40px;
	  height: 30px;
	  display: block; /* label은 크기값이 들어가지 않기때문에 block으로 설정해주어야한다. */
	  position: relative;
	  cursor: pointer;
	} 
		
	label[for=trigger] span {
		position: absolute;
		height: 2px;
		width: 100%;
		background-color: black;
		left: 0;
		transition:0.3s;
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
	
	input[id=trigger]:checked + label[for=trigger] span:nth-child(1) {
		/* + : checked되었을때 인접해있는 라벨설정 */
		transform: rotate(45deg);
		top: 50%;
	}
	input[id=trigger]:checked + label[for=trigger] span:nth-child(2) {
		opacity: 0; /* 투명 */
	}
	input[id=trigger]:checked + label[for=trigger] span:nth-child(3) {
		transform: rotate(-45deg);
		top: 50%;
	}
</style>
</head>
<body>

  <div class="container">
    <input type="checkbox" id="trigger">
    <label for="trigger"> <!-- input태그를 도와주는 역할 / input부분이 보이지 않거나 떨어져 있어도 그 역할을 label이 해준다. -->
      <span></span>
      <span></span>
      <span></span>
    </label>
  </div>
</body>
</html>