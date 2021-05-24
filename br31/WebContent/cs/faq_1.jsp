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
 	background: url("http://localhost:9000/br31/images/icon_question.gif") no-repeat;
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
section.faq .page_button ul li:nth-child(2) a{
	background-color: #ff7c97;
	color: white;
}

section.faq .faq_list li a {
	display: block; 
	position: relative; 
/* 	padding:25px 65px 25px 68px;  */
}
section.faq .faq_list a:after {
	position: absolute; 
	top: 50%; 
	right: 14px; 
	width: 21px; 
	height: 12px; 
	margin-top: -6px; 
	background: url(http://localhost:9000/br31/images/icon_faq_list.gif) no-repeat; 
	content:"";
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
							<a href="#">아이스크림도 배달이 되나요?</a>
						</li>
						<li>
							<a href="#">상품권 유효기간은 얼마 동안인가요?</a>
						</li>
						<li>
							<a href="#">아이스크림 케이크의 보관은 어떻게 하나요?</a>
						</li>
						<li>
							<a href="#">배스킨라빈스 상품권은 어떤 종류가 있고, 어떻게 구매할 수 있나요?</a>
						</li>
						<li>
							<a href="#">아이스크림 케이크에 꽂은 생일초를 제거할 때 은박지가 케이크 속에 남아있네요?</a>
						</li>
						<li>
							<a href="#">아이스크림은 꼭 핑크스푼으로 먹어야 하나요?</a>
						</li>
						<li>
							<a href="#">카카오톡 플러스 친구 문자를 받고 싶지 않습니다.</a>
						</li>
						<li>
							<a href="#">카카오톡 플러스 친구는 어떻게 맺는 건가요?</a>
						</li>
						<li>
							<a href="#">모바일교환권 (물품형)으로 타제품 교환이 가능한가요?</a>
						</li>
						<li>
							<a href="#">모바일교환권 유효기간 연장은 어떻게 하나요?</a>
						</li>
					</ul>
				</div>
				<div class="page_button">
					<ul>
						<li><a href="#">&lt;</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_1.jsp">1</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_2.jsp">2</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_3.jsp">3</a></li>
						<li><a href="http://localhost:9000/br31/cs/faq_2.jsp">&gt;</a></li>
					</ul>
				</div>
			</div>
		</section>	
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>