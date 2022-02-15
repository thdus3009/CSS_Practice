<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Slider_1</title>
<style type="text/css">
/* Google Web Font */
@import url('https://fonts.googleapis.com/css?family=Raleway&display=swap');

body {
	font-family: 'Raleway', sans-serif;
    
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
	margin:0;	
}
a {
  text-decoration: none;
}

.tab-inner {
	height: 500px;
	/* border : 1px solid green; */
}
.tab-inner h1 {
	text-align: center;
}

input[name=tabmenu] {
	display: none;
}
.tabs {
	/* border: 1px solid crimson; */
	width: 800px;
	height: 400px;
	position: relative;
	overflow: hidden;
}
.items {
	width: 2400px;
	height: 400px;
	position: absolute;
	top: 0;
	left: 0;
	
	transition : 0.5s;
}
.items div {
	/* border: 1px solid blue; */
	box-sizing: border-box;
	width: 800px;
	height:400px;
	padding: 50px;
	
	float:left;
	text-align: center;
} 
.items div img {
	width: 100px;
    border-radius: 50%;
}
.items div p b {
	display: block
}
.items div p span {
	color: orange;
}
.btn {
	text-align: center;
}
.btn label {
	background-color: lightgray;
	width:10px;
	height: 10px;
	
	/* width, height를 설정해주기 위해서는 block또는 inline-block을 해주어야 한다. */
	display: inline-block; 
	transition : 0.5s;
}

/* slider */
input[id=tab1]:checked ~ .tabs .items {
	left : 0;
}
input[id=tab2]:checked ~ .tabs .items {
	left : -800px;
}
input[id=tab3]:checked ~ .tabs .items {
	left : -1600px;
}

/* btn */
input[id=tab1]:checked ~ .btn label[for=tab1] {
	background-color: crimson;
	border-radius: 50%;
}
input[id=tab2]:checked ~ .btn label[for=tab2] {
	background-color: crimson;
	border-radius: 50%;
}
input[id=tab3]:checked ~ .btn label[for=tab3] {
	background-color: crimson;
	border-radius: 50%;
}
</style>
</head>
<body>

	<div class="tab-inner">
		
		<input type="radio" name="tabmenu" id="tab1" checked>
		<input type="radio" name="tabmenu" id="tab2">
		<input type="radio" name="tabmenu" id="tab3">
		
		<h1>Testimonials</h1>
		
		<!-- tabs:고정값 / items:슬라이더 되면서 이동 -->
		<div class="tabs">
			<div class="items">
				<div>
					<img src="/image/face-01.jpg">
					<p>
						As we all know, it’s easy for marketers to brag about how great their product or service is. Writing compelling copy, shooting enticing photos, or even producing glamorous videos are all tactics we use to draw attention to our brands. While all of these strategies can be successful, there really is no better way to gain trust and prove the validity of your brand like customer testimonials.
					</p>
					<p>
						<b>Ackerley</b>
						Media Analyst at <span>ZenDesk</span>
					</p>
				</div>
				<div>
					<img src="/image/face-02.jpg">
					<p>
						ZenDesk’s testimonial page is beautifully laid out AND functional, with a silent customer video playing on loop to serve as the banner, a menu to filter testimonials by location, company size, industry, and use case, and lastly thumbnails linking to the full customer stories for a variety of big-name brands. This is a clean and concise way to showcase their happy customers.
					</p>
					<p>
						<b>Dabria</b>
						Graphic Designer at <span>ChowNow</span>
					</p>
				</div>
				<div>
					<img src="/image/face-03.jpg">
					<p>
						As we all know, it’s easy for marketers to brag about how great their product or service is. Writing compelling copy, shooting enticing photos, or even producing glamorous videos are all tactics we use to draw attention to our brands. While all of these strategies can be successful, there really is no better way to gain trust and prove the validity of your brand like customer testimonials.
					</p>
					<p>
						<b>Vadim</b>
						Developer at <span>Startup Institute</span>
					</p>
				</div>
			</div>
		</div>
		
		<div class="btn">
			<label for="tab1"></label>
			<label for="tab2"></label>
			<label for="tab3"></label>
		</div>
	</div>

</body>
</html>