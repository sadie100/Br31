<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/cs.css">
<style>
div.pagination a:nth-child(4){
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