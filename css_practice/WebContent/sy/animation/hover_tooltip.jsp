<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4. hover되면 나타나는 툴 팁(tooltip) 만들기</title>

<style type="text/css">
	/* 중앙정렬 방법 2가지 */
	/* 1. flex 사용 */
	body {
		display: flex;
		height: 100vh;
		justify-content: center;
		align-items: center;
	}
	
	/* 2.text-align 사용 */
	/* icon이 inline요소로 변경했기 때문에 text-align : center가 가능하다. */
	/* .container {
		text-align : center;
	} */
	
	.icon {
		display: inline-block;
		margin: 10px;
		position: relative;
	}		
	.icon img {
		width: 150px;
	} 
	
	.icon span {
		position: absolute;
		background: black;
		color: white;
		width: 233px;		
		padding: 10px;
		text-align: center;
		top: -79px;
		/* left: -48px; */
		/* 부모요소의 사이즈와 상관없이 항상 수평중앙을 시킬 수 있다. */
		left: 50%;
		transform: translateX(-50%);
		border-radius: 10px;
		
		/* display: none; */
		opacity: 0;
		transition: 0.5s;
		
		/* 눈에 보이진 않지만 해당 span은 hover이벤트가 적용되므로 아이콘에 가까이 가기도 전에 말풍선이 띄우는 것을 방지해야 한다. */
		visibility: hidden;
		
	}
		
	/* 말풍선용 역삼각형 만드는 것은 after를 쓰나 before를 쓰나 상관없다. 
	   .icon span:after은 .icon span의 자식요소가 된다.
	*/
	.icon span:after {
		content:''; /* 내용을 넣든 안넣든 무조건 content로 시작해야한다. */
		position: absolute;
		background-color: black;
		width: 12px;
		height: 12px;
		
		bottom: -9px;
		left: 50%;
		transform: rotate(45deg) translateX(-50%);
		/* transform은 두번 사용할 수 없다. */
		
	}
	
	.icon:hover span {
		display: block;
		opacity: 1;
		visibility: visible;
	}
		
</style>

</head>
<body>
	
	<div class="container">
		<div class="icon">
			<img src="../image/test_1.svg">
			<span>이 식물의 원산지는 가나입니다. 물을 일주일에 한 번만 주세요.</span>
		</div>
 		<div class="icon">
			<img src="../image/test_2.svg">
			<span>이 식물의 원산지는 한국입니다. 물은 이주일에 한 번만 주세요.</span>
		</div>
		<div class="icon">
			<img src="../image/test_3.svg">
			<span>이 식물의 원산지는 일본입니다. 물은 일주일에 두 번 씩 주세요.</span>
		</div> 
	</div>
	
</body>
</html>