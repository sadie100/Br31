<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section.faq {
	width: 1400px;
	margin: auto;
	text-align: center;
}
section.faq a {
	text-decoration: none;
	color: black;
}
section.faq ul {
	list-style-type: none;
	display: inline-block;
	padding: 0;
}
section.faq .faq_board {
	width: 1000px;
	margin: auto;
	display: inline-block;
}
section.faq .faq_board h3 {
	margin: 40px 0 20px 0;
}
section.faq .faq_type ul {
	width: 1000px;
	height: 50px;
	line-height: 50px;
	border: 1px solid darkgray;
	border-radius: 5px;
}
section.faq .faq_type li {
	display: inline-block;
	float: left;
}
section.faq .faq_type a {
	display: inline-block;
	width: 200px;
	margin: 0;
	font-weight: bold;
}
section.faq .faq_type a:hover {
	background-color: #92867f;
	color: white;
}
section.faq .faq_list ul{
	display: inline-block;
	width: 1000px;
}
section.faq .faq_list li:last-child {
	border-bottom: 1px solid darkgray;
}
section.faq .faq_list li{
	text-align: left;
	height: 70px;
	line-height: 70px;
	text-indent: 100px;
	border-top: 1px solid darkgray;
	background-image: url("http://localhost:9000/br31/images/icon_question.gif");
	background-repeat: no-repeat;
	background-position: 40px 30px;

}
section.faq .faq_list a {
	display: block;
	height: 70px;
}

section.faq .page_button {
	margin: 30px 0 70px 0;
}
section.faq .page_button li {
	display: inline-block;
	margin: 0 5px;
}
section.faq .page_button a {
	display: inline-block;
	border: 1px solid darkgray;
	width: 40px;
	height: 40px;
	line-height: 40px;
	border-radius: 50%;
	font-size: 13px;
}
section.faq .page_button li:first-child a, section.faq .page_button li:last-child a {
	color: #ff7c97;
	font-weight: bold;
	font-size: 16px;
}
section.faq .page_button ul li:nth-child(3) a{
	background-color: #ff7c97;
	color: white;
}

</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="cs_header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="faq">
			<div class="faq_board">
				<h3>고객센터 FAQ</h3>
				<div class="faq_type">
					<ul>
						<li>
							<a href="#">전체</a>
						</li>
						<li>
							<a href="#">제품</a>
						</li>
						<li>
							<a href="#">포인트</a>
						</li>
						<li>
							<a href="#">회원</a>
						</li>
						<li>
							<a href="#">기타</a>
						</li>
					</ul>
				</div>
				<div class="faq_list">
					<ul>
						<li>
							<a href="#">모바일교환권으로 이벤트에 참여 가능한가요?</a>
						</li>
						<li>
							<a href="#">모바일교환권 물품형과 금액형은 어떤 차이가 있죠?</a>
						</li>
						<li>
							<a href="#">모바일교환권 사용은 어떻게 하나요?</a>
						</li>
						<li>
							<a href="#">쿠폰을 해피앱으로 받았는데, 어떻게 확인하나요?</a>
						</li>
						<li>
							<a href="#">해피포인트 앱은 어떻게 사용하나요? 다운로드 받나요?</a>
						</li>
						<li>
							<a href="#">신용카드로 구매 시 해피포인트 적립이 가능한가요?</a>
						</li>
						<li>
							<a href="#">해피포인트 카드는 어떻게 사용하나요?(적립 및 사용)</a>
						</li>
						<li>
							<a href="#">해피쿠폰 사용 및 이벤트 참여 시에도 해피포인트 적립이 가능한가요?</a>
						</li>
						<li>
							<a href="#">영수증에 나와 있는 만족도 조사는 무엇이며, 어떻게 참여하나요?</a>
						</li>
						<li>
							<a href="#">영수증에 나와 있는 CCM 인증기업은 무엇인가요?</a>
						</li>
					</ul>
				</div>
				<div class="page_button">
					<ul>
						<li><a href="http://localhost:9000/br31/cs/faq_1.jsp">&lt;</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_1.jsp">1</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_2.jsp">2</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_3.jsp">3</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_3.jsp">&gt;</a></li>
					</ul>
				</div>
			</div>
		</section>	
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>