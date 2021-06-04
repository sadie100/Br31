<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/cs/css/cs.css">
<script src="http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
	
	$(document).on("click", ".faq_list a", function() {
		
		$(".faq_list a").next(".answer").slideUp();
		$(this).parent("li").siblings().removeClass("on"); 
		$(this).parent("li").toggleClass("on"); 
		
 		if ($(this).parent("li").is(".on")) {
			$(this).next(".answer").slideDown();
		} else {
			$(this).next(".answer").slideUp();
		}
		return false;
	});
});

</script>
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
							<div class="answer">
								<div>
									<p>해피오더에서 구매하시면 녹지 않게 포장되어 배송됩니다.</p>
									<p>배달가능 지역(점포), 배달가능 제품의 제한이 있으므로 해피오더에서 확인 후 구매 부탁드립니다.</p>
								</div>
							</div>
						</li>
						<li>
							<a href="#">상품권 유효기간은 얼마 동안인가요?</a>
							<div class="answer">
								<div>
									<p>상품권의 유효기간은 발행일로부터 5년입니다.</p>
									<p>상품권 후면 하단에 발행일자를 확인하실 수 있습니다. </p>
								</div>
							</div>
						</li>
						<li>
							<a href="#">아이스크림 케이크의 보관은 어떻게 하나요?</a>
							<div class="answer">
								<div>
									<p>구매 시 포장된 드라이아이스를 제거하고, 냉동고에 보관하시면 됩니다.</p>
								</div>
							</div>
						</li>
						<li>
							<a href="#">배스킨라빈스 상품권은 어떤 종류가 있고, 어떻게 구매할 수 있나요?</a>
							<div class="answer">
								<div>
									<p>상품권의 유효기간은 발행일로부터 5년입니다.</p>
									<p>상품권 후면 하단에 발행일자를 확인하실 수 있습니다. </p>
								</div>
							</div>
						</li>
						<li>
							<a href="#">아이스크림 케이크에 꽂은 생일초를 제거할 때 은박지가 케이크 속에 남아있네요?</a>
							<div class="answer">
								<div>
									<p>네, 고객님.</p><p>아이스크림은 냉동제품으로 생일초를 꽂은 후 초를 제거할 때 케이크 속에 은박지가 남아있을 수 있으니</p>
									<p>생일초의 은박지까지 완전히 제거된 것을 확인 후 드실 것을 권해드립니다.</p>
								</div>
							</div>
						</li>
						<li>
							<a href="#">아이스크림은 꼭 핑크스푼으로 먹어야 하나요?</a>
							<div class="answer">
								<div>
									<p>네, 고객님. 가급적 점포에서 제공된 핑크스푼을 이용해서 드시는 것을 권해드립니다.</p>
									<p>가정에서 사용하는 티스푼이나 도시락스푼을 이용할 경우 손잡이 뒷면이 파손되는 경우가 발생할 수 있습니다.</p>
								</div>
							</div>
						</li>
						<li>
							<a href="#">카카오톡 플러스 친구 문자를 받고 싶지 않습니다.</a>
							<div class="answer">
								<div>
									<p>카카오톡 내 검색창에 배스킨라빈스 검색 ▶ 친구 클릭 ▶ 차단</p>
								</div>
							</div>
						</li>
						<li>
							<a href="#">카카오톡 플러스 친구는 어떻게 맺는 건가요?</a>
							<div class="answer">
								<div>
									<p>카카오톡 내 검색창에 배스킨라빈스 검색 ▶ 친구 클릭</p>
								</div>
							</div>
						</li>
						<li>
							<a href="#">모바일교환권 (물품형)으로 타제품 교환이 가능한가요?</a>
							<div class="answer">
								<div>
									모바일교환권(물품형) 해당 제품이 없을 경우 타제품 교환이 가능합니다.<br>
									타 제품 교환 시 차액 환불이 되지 않으므로 기재된 금액만큼의 제품으로 교환하셔야 합니다.<br>
									타 제품 교환을 원하지 않는 경우 구매처를 통해 환불요청을 하시면 환불이 가능합니다.<br>
									[ 구매처별 고객센터 ]<br>
									- 해피콘(910) : 1599-2799<br>
									- 기프티쇼(900) : 1588-6474<br>
									- 기프티콘(999) : 1800-0133<br>
									- 카카오톡 : 1544-2431<br>- 해피마켓 : 1577-8450
								</div>
							</div>
						</li>
						<li>
							<a href="#">모바일교환권 유효기간 연장은 어떻게 하나요?</a>
							<div class="answer">
								<div>
									1. 선물함의 모바일교환권을 열어, 하단 [유효기간 연장] 버튼을 클릭<br>
									2. 모바일교환권 구매처로 연락하여 연장 진행<br>
									[ 구매처별 고객센터 ]<br>
									- 해피콘(910) : 1599-2799<br>
									- 기프티쇼(900) : 1588-6474<br>
									- 기프티콘(999) : 1800-0133<br>
									- 카카오톡 : 1544-2431<br>- 해피마켓 : 1577-8450									
								</div>
							</div>
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