<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section.cs {
	width: 1400px;
	margin: auto;
	text-align: center;
}
section.cs .title {
	text-align: center;
	margin: 70px 0;
}
section.cs .title>div {
	width: 36px;
	height: 26px;
	display: inline-block;
	background-repeat: no-repeat;
	background-position: center;
}
section.cs .title_left {
	background-image: url("http://localhost:9000/br31/images/icon_title_1.png");
}
section.cs .title_right {
	background-image: url("http://localhost:9000/br31/images/icon_title_2.png");
}
section.cs .title img {
	display: inline-block;
	margin: 0 10px;
}
section.cs .title span {
	display: block;
	font-size: 14px;
	margin-top: 5px;
}

section.cs .cs_menu {
	width: 1000px;
	height: 60px;
	text-align: center;
	border: 1px solid darkgray;
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom: 2px solid #ff7c97;
	line-height: 60px;
	display: inline-block;
}
section.cs .cs_menu button {
	width: 200px;
	height: 40px;
	line-height: 35px;
	margin: 0 10px;
	text-indent: 30px;
	font-weight: bold;
	border: none;
	border-radius: 20px;
	background: white no-repeat 20px 2px;
/* 	background-color: white;
	background-repeat: no-repeat;
	background-position: 20px 2px; */
}
section.cs .cs_menu button:nth-child(1) {
	background-image: url("http://localhost:9000/br31/images/img_faq.png");
}
section.cs .cs_menu button:nth-child(2) {
	background-image: url("http://localhost:9000/br31/images/img_inquiry.png");
}
section.cs .cs_menu button:nth-child(3) {
	background-image: url("http://localhost:9000/br31/images/img_myvoc.png");
}
section.cs .cs_menu button:hover {
	border: 2px solid #ff7c97;
	cursor: pointer;
}
</style>
</head>
<body>
		<section class="cs">
			<div class="title">
				<div class="title_left"></div>
				<img src="http://localhost:9000/br31/images/h_customer_center.png">
				<div class="title_right"></div>
				<span>고객의 소리를 적극 경청하고 고객만족향상 활동을 지속적으로 실천합니다.</span>
			</div>
			<div class="cs_menu">
				<button type="button" onclick="location.href='http://localhost:9000/br31/cs/faq_1.jsp'">자주하는 질문</button>
				<button type="button" onClick="location.href='http://localhost:9000/br31/cs/voc_write.jsp'">1:1 문의</button>
				<button type="button" onClick="location.href='http://localhost:9000/br31/cs/voc_list.jsp'">내 문의함</button>
			</div>
		</section>
</body>
</html>