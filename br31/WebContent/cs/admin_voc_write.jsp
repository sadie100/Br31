<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 문의</title>
<link rel="stylesheet" href="http://localhost:9000/br31/cs/css/cs.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<section class="cs_header">
		<div class="title">
			<div class="title_left"></div>
			<img src="http://localhost:9000/br31/images/h_customer_center.png">
			<div class="title_right"></div>
			<span>고객의 소리를 적극 경청하고 고객만족향상 활동을 지속적으로 실천합니다.</span>
		</div>
		<div class="cs_menu">
			<button type="button" class="btn_faq" onclick="location.href='http://localhost:9000/br31/cs/faq_1.jsp'">
				자주하는 질문</button>
			<button type="button" class="btn_voc">
				답변 대기 문의</button>
			<button type="button" class="btn_myvoc">
				답변 완료 문의</button>
		</div>
	</section>
	
	<div class="cs_content">
		<section class="voc_content">
			<h3>[관리자] 고객 1:1 문의</h3>
			<form name="voc_content_form" action="#" method="get">
				<div class="details">
					<span>※ 답변이 완료된 문의는 수정이 불가능합니다.</span>
					<table>
						<tr>
							<th colspan=6>문   의   내   용</th>
						</tr>
						<tr>
							<th>상담유형</th>
							<td colspan=2>칭찬</td>
							<th>내용유형</th>
							<td colspan=2>인적서비스</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan=5>배라 수원점 사장님을 칭찬합니다!</td>
						</tr>
						<tr>
							<th>발생일시</th>
							<td colspan=5>2021-05-22 15:00</td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan=6>
								배라 수원점 사장님을 칭찬합니다!!!!<br>
								아이스크림도 똥그랗게 잘 퍼주시고 갈 때마다 항상 친절하세요!<br>
								22일에 아이스크림을 사러 갔다가 바닥에 떨어트렸는데 괜찮냐고 물어봐주시고 새로 퍼주셨어요ㅠㅠ <br>
							</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan=5><img src="http://localhost:9000/br31/images/insta_1.jpg" width="100px" height="100px"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td>김철수</td>
							<th>이메일</th>
							<td>kimcs@naver.com</td>
							<th>전화번호</th>
							<td>010-9876-1234</td>
						</tr>
					</table>
				</div>
				<div class="answer">
					<table>
						<tr>
							<th>문   의   답   변</th>
						</tr>
						<tr>
							<td>
								<textarea class="voc_answer"></textarea>
							</td>
						</tr>
					</table>
				</div>
				<div class="btn_area">
					<div class="area_left">
						<a href="http://localhost:9000/br31/cs/voc_list.jsp"><button type="button">목록</button></a>
					</div>
					<div class="area_right">
						<a><button type="button">답변등록</button></a>
					</div>
				</div>
			</form>
		</section>	
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>