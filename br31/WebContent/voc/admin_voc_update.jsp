<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 문의</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/cs.css">
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
			<a href="http://localhost:9000/br31/faq/admin_faq_list.jsp"><button type="button" class="btn_faq">
				자주하는 질문</button></a>
			<a href="http://localhost:9000/br31/voc/admin_voc_list.jsp"><button type="button" class="btn_voc">
				답변 대기 문의</button></a>
			<a href="http://localhost:9000/br31/voc/admin_voc_list.jsp"><button type="button" class="btn_myvoc">
				답변 완료 문의</button></a>
		</div>
	</section>
	
	<div class="cs_content">
		<section class="voc_content">
			<h3>고객 접수 문의</h3>
			<form name="voc_content_form" action="#" method="get">
				<div class="details">
					<span>※ 답변은 자세하고 정확하게 작성해주시기 바랍니다.</span>
					<table>
						<tr>
							<th colspan=6>문   의   내   용</th>
						</tr>
						<tr>
							<th>상담유형</th>
							<td colspan=2>문의</td>
							<th>내용유형</th>
							<td colspan=2>제품</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan=5>엄마는 외계인에 들어있는 초코볼을 사고 싶어요ㅠㅠ	</td>
						</tr>
						<tr>
							<th>발생일시</th>
							<td colspan=5>2021-05-24 15:00</td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan=6>
								엄마는 외계인에 들어있는 초코볼을 사고 싶습니다ㅠㅠ!<br>
								따로 판매할 예정은 없나요??<br>
								많은 사람이 원하고 있어요 제발 팔아주세요ㅠㅠㅠ <br>
							</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td colspan=5><img src="http://localhost:9000/br31/images/insta_1.jpg" width="100px" height="100px"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td>이영희</td>
							<th>이메일</th>
							<td>0hee0@naver.com</td>
							<th>전화번호</th>
							<td>010-4511-4321</td>
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
								<textarea class="voc_answer">안녕하세요 고객님 ~~ 배스킨라빈스 CS팀 사원 홍길동입니다.</textarea>
							</td>
						</tr>
					</table>
				</div>
				<div class="btn_area">
					<div class="area_left">
						<a href="http://localhost:9000/br31/voc/admin_voc_list.jsp"><button type="button">목록</button></a>
					</div>
					<div class="area_right">
						<a><button type="button">답변수정</button></a>
						<a><button type="button">답변삭제</button></a>
					</div>
				</div>
			</form>
		</section>	
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>