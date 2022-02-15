<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>8. before & after 기본사용법</title>
<style type="text/css">
/* Google Web Font */
@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');

body {
  font-family: 'Raleway', sans-serif;
  line-height: 1.5em;
  margin: 0;
  font-size: 30px;
  font-weight: 300;
  color: #222;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}
a {
  text-decoration: none;
  color: #222;
}

/* before, after는 반드시 content를 빈값이라도 넣어주어야 작동한다. */
/* before, after를 쓸때는  position은 사용할 필요 없다. */

.gnb a:before {
	content: "01";
	background-color: royalblue;
	color:#fff;
	width: 40px;
    height: 40px;
    font-size: 24px;
    display: inline-block;

    text-align: center;
    line-height: 36px;

    margin-right: 5px;
    border-radius: 50%;
	
}

.gnb a:after {/* inline요소이기 때문에 margin-좌우는 적용되지만 상하는 적용되지 않는다. */
	content: "update";
	font-size: 14px;
	background-color: crimson;
	color: #fff;
	margin-left: 5px;
	padding: 4px 6px;
	border-radius: 6px;
}

</style>
</head>
<body>

	<div class="gnb">
		<a href="#">CodingWorks Online Class</a>
	</div>

</body>
</html>