<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11. content attr을 활용한 텍스트 네비게이션</title>

<style type="text/css">
/* Google Web Font */
@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');

body {
  font-family: 'Raleway', sans-serif;
  line-height: 1.5em;
  margin: 0;
  font-weight: 300;
  display: flex;
  font-weight:600;
  
  justify-content: center; /* 가로 중앙 */
  
  align-items: center; /* 세로 중앙 */
  height: 100vh;
  flex-direction: column;
  background: linear-gradient(90deg,#DCE35B,#45B649); /* 그라데이션을 가로로 주고 싶을때는 height의 높이값을 반드시 주어야한다. > height:100vh */
}
a {
  text-decoration: none;
  color: #222;
}

.gnb {
  background-color: #fff;
  padding: 15px;
  border-radius: 10px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
  padding-bottom: 10px;
}
.gnb a {
  /*border: 1px solid red;*/
  width: 80px;
  display: inline-block;
  height: 30px;
  line-height: 30px;
  text-align: center;
  position: relative;
  overflow: hidden;
}
.gnb a:before, /* : 앞에 띄어쓰기하면 안된다. 그리고 a태그와 a:before, a:after는 부모자식 관계를 갖는다. */ 
.gnb a:after {
  position: absolute;
  content: attr(data-link);
  width: 100%;
  transition: 0.3s;
}
.gnb a:before {
  top: 0;
  left: 0;
}
.gnb a:after {
  top: 100%;
  left: 0;
  color: #45B649;
}
.gnb a:hover:before {
  top: -100%;
}
.gnb a:hover:after {
  top: 0;
}
</style>
</head>
<body>

	<div class="gnb">
		<a href="#" data-link="메일"></a>
		<a href="#" data-link="카페"></a>
		<a href="#" data-link="블로그"></a>
		<a href="#" data-link="지식in"></a>
		<a href="#" data-link="쇼핑"></a>
		<a href="#" data-link="pay"></a>
		<a href="#" data-link="사전"></a>
		<a href="#" data-link="뉴스"></a>
	</div>
	
</body>
</html>



