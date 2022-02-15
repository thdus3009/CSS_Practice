<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS 연습모드</title>

<style type="text/css">
	
	body {
		padding : 20px;
		padding-bottom: 80px;
	}
	.container {
		display: flex;
		flex-direction: column;
	}
	
	a {
		text-decoration: none;
 		color: #222;
 		line-height: 27px;
 		cursor: default;
	}
	
	h5 {
		font-size: 17px;
	}
	
	span {
		transition : 0.3s;
	}
	
	span:hover {
		background-color: #FFE793;
		cursor: pointer;
	}
</style>
</head>
<body>
	<h2>Animation Index</h2>
	<div style="border:1px solid red; margin: 20px 0;">
		basic jquery vedio_background
	</div>
	
	<div class="container">
	<a href="./animation/loading_image_1.jsp"><span>1. 도형 로딩 애니메이션 - 01<span></a>
	<a href="./animation/loading_image_2.jsp"><span>2. 도형 로딩 애니메이션 - 02</span></a>
	<a href="./animation/double_border_radius.jsp"><span>3. 더블 보더 레디어스 애니메이션</span></a>
	<a href="./animation/hover_tooltip.jsp"><span>4. hover되면 나타나는 툴 팁(tooltip) 만들기</span></a>
	<a href="./animation/hover_menu.jsp"><span>5. 오버한 메뉴 외 나머지 흐려지는 네비게이션</span></a>
	<a href="./animation/hover_seperate.jsp"><span>6. 위아래로 분리되는 호버 네비게이션 이펙트</span></a>
	<a href="./animation/hover_3d.jsp"><span>7. 앱 UI 레이어 3D 호버 에니메이션트</span></a>
	
	<h5>- before&after</h5>
	<a href="./animation/before_after_1.jsp"><span>8. before&after 기본사용법</span></a>
	<a href="./animation/before_after_2.jsp"><span>9. 애니메이션 호버 네비게이션 이펙트</span></a>
	<a href="./animation/before_after_3.jsp"><span>10. SNS 아이콘 애니메이션</span></a>
	<a href="./animation/before_after_4.jsp"><span>11. content attr을 활용한 텍스트 네비게이션</span></a>
	
	<h5>- fontawesome</h5>
	<a href="./animation/fontawesome.jsp"><span>12. fontawesome사용한 input입력필드</span></a>
	<a href="./animation/fontawesome2.jsp"><span>12-1. fontawesome사용한 input입력필드2</span></a>
	
	<h5>- keyframes</h5>
	<a href="./animation/skill_progress_bar.jsp"><span>13. 스킬 프로그래스 바</span></a>
	<a href="./animation/skill_progress_bar2.jsp"><span>13-1. 스킬 프로그래스 바 - 순차적으로</span></a>
	
	<h5>- 인접선택자 (+, :: ...)</h5>
	<a href="./animation/flexbox.jsp"><span>14. 아코디언 네비게이션 만들기</span></a>
	<a href="./animation/hamburger_button.jsp"><span>15. 인접선택자 - 햄버거버튼 만들기</span></a>
	<a href="./animation/side_bar.jsp"><span>16. 사이드바 만들기</span></a>
	
	<h5>- 탭 컨텐츠</h5>
	<a href="./animation/tab_menu.jsp"><span>17. 탭 메뉴 콘텐츠 만들기1</span></a>
	<a href="./animation/tab_menu2.jsp"><span>17-1. 탭 메뉴 콘텐츠 만들기2 (opacity효과)</span></a>
	<a href="./animation/tab_menu3.jsp"><span>17-2. 탭 메뉴 콘텐츠 만들기3 (opacity효과)</span></a>
	<a href="./animation/tab_menu3.jsp"><span>17-3. 탭 메뉴 콘텐츠 만들기4 (slide효과)</span></a>
	<a href="./animation/tab_menu4.jsp"><span>17-4. 탭 메뉴 콘텐츠 만들기5 (slide효과2) ★</span></a>
	</div>
	
	<h5>- slider</h5>
	<a href="./animation/slider_1.jsp"><span>18-1. 슬라이더1</span></a>
</body>
</html>