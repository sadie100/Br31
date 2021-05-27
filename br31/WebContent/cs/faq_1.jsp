<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/cs/css/cs.css">
<style>
div.pagination a:nth-child(2){
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
				<div class="pagination">
					<a href="http://localhost:9000/br31/cs/faq_1.jsp">&lt;</a>
					<a href="http://localhost:9000/br31/cs/faq_1.jsp">1</a>
					<a href="http://localhost:9000/br31/cs/faq_2.jsp">2</a>
					<a href="http://localhost:9000/br31/cs/faq_3.jsp">3</a>
					<a href="http://localhost:9000/br31/cs/faq_2.jsp">&gt;</a>
				</div>
			</div>
		</section>	
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>