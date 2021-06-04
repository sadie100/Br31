<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 문의함</title>
<link rel="stylesheet" href="http://localhost:9000/br31/cs/css/cs.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../admin_header.jsp"></jsp:include>
	
	<!-- content -->
	<section class="cs_header">
		<div class="title">
			<div class="title_left"></div>
			<img src="http://localhost:9000/br31/images/h_customer_center.png">
			<div class="title_right"></div>
			<span>고객의 소리를 적극 경청하고 고객만족향상 활동을 지속적으로 실천합니다.</span>
		</div>
		<div class="cs_menu">
			<a href="http://localhost:9000/br31/cs/faq_1.jsp"><button type="button" class="btn_faq">
				자주하는 질문</button></a>
			<a href="http://localhost:9000/br31/cs/admin_voc_list.jsp"><button type="button" class="btn_voc">
				답변 대기 문의</button></a>
			<a href="http://localhost:9000/br31/cs/admin_voc_list.jsp"><button type="button" class="btn_myvoc">
				답변 완료 문의</button></a>
		</div>
	</section>
	
	<div class="cs_content">
		<section class="voc_list">
			<h3>[관리자] 고객센터 문의 목록</h3>
			<form name="voc_list_form" action="#" method="get">
				<div class="voc_search_bar">
					<select>
						<option value="상담유형">상담유형</option>
						<option value="칭찬">칭찬</option>
						<option value="불만">불만</option>
						<option value="문의">문의</option>
						<option value="제안">제안</option>
						<option value="제보">제보</option>
					</select>
					<select>
						<option value="내용유형">내용유형</option>
						<option value="제품">제품</option>
						<option value="인적서비스">인적서비스</option>
						<option value="점포서비스">점포서비스</option>
						<option value="이벤트">이벤트</option>
						<option value="HP카드">HP카드</option>
						<option value="모바일쿠폰">모바일쿠폰</option>
						<option value="기타">기타</option>
					</select>
					<input type="text" id="voc_search">
					<button type="button">검색</button>
				</div>
				<div class="list">
					<table>
						<tr>
							<th>번호</th>
							<th>상담유형</th>
							<th>내용유형</th>
							<th>제목</th>
							<th>접수일</th>
							<th>상태</th>
						</tr>
						<tr>
							<td>1</td>
							<td>칭찬</td>
							<td>인적서비스</td>
							<td><a href="#">배라 수원점 사장님을 칭찬합니다!</a></td>
							<td>2021-05-22</td>
							<td>답변완료</td>
						</tr>
						<tr>
							<td>2</td>
							<td>문의</td>
							<td>제품</td>
							<td><a href="http://localhost:9000/br31/cs/admin_voc_content.jsp">엄마는 외계인에 들어있는 초코볼을 사고 싶어요ㅠㅠ</a></td>
							<td>2021-05-24</td>
							<td>답변대기</td>
						</tr>
					</table>
				</div>
			</form>
		</section>	
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>