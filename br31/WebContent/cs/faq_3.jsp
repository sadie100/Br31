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
section.faq .page_button ul li:nth-child(4) a{
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
							<a href="#">모바일교환권 유효기간이 지났는데 사용할 수 있나요?</a>
						</li>
						<li>
							<a href="#">이벤트는 모든 매장에서 동일하게 진행되나요?</a>
						</li>
						<li>
							<a href="#">직원채용</a>
						</li>
						<li>
							<a href="#">점포 운영시간이 궁금합니다.</a>
						</li>
						<li>
							<a href="#">미성년자도 아르바이트를 할 수가 있나요?</a>
						</li>
						<li>
							<a href="#">회원탈퇴는 어디서 하나요?</a>
						</li>
						<li>
							<a href="#">상품권으로 제품 구매 시 해피포인트 적립이 되나요?</a>
						</li>
						<li>
							<a href="#">현금과 누적포인트를 동시에 사용할 수 있나요?</a>
						</li>
						<li>
							<a href="#">행사문자메세지를 받고 싶지 않은데 어떻게 해야 하나요?</a>
						</li>
						<li>
							<a href="#">할인이나 제휴 되는 카드는 없나요?</a>
						</li>
					</ul>
				</div>
				<div class="page_button">
					<ul>
						<li><a href="http://localhost:9000/br31/cs/faq_2.jsp">&lt;</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_1.jsp">1</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_2.jsp">2</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_3.jsp">3</a></li>
						<li><a href="#">&gt;</a></li>
					</ul>
				</div>
			</div>
		</section>	
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>