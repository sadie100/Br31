<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/cs.css">
<style>
div.pagination a:nth-child(3){
	background-color: rgb(245,111,152);
	color: white;
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="cs_header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="cs_content">
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
				<div class="pagination">
					<a href="http://localhost:9000/br31/faq/faq_1.jsp">&lt;</a>
					<a href="http://localhost:9000/br31/faq/faq_1.jsp">1</a>
					<a href="http://localhost:9000/br31/faq/faq_2.jsp">2</a>
					<a href="http://localhost:9000/br31/faq/faq_3.jsp">3</a>
					<a href="http://localhost:9000/br31/faq/faq_2.jsp">&gt;</a>
				</div>
			</div>
		</section>	
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>