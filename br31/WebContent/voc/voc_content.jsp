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
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="cs_header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="cs_content">
		<section class="voc_content">
			<h3>고객센터 1:1 문의 내용</h3>
			<form name="voc_content_form" action="#" method="get">
				<div class="details">
					<span>※ 문의는 수정이 불가능합니다. 수정이 필요하신 경우 삭제 후 재작성을 부탁드립니다.</span>
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
							<th>작성일</th>
							<td colspan=5>2021-05-22</td>
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
								안녕하세요 고객님. 배스킨라빈스 cs팀 홍길동입니다.<br>
								시간 내시어 칭찬 후기 남겨주셔서 정말 감사드립니다.<br>
								동그란 아이스크림 모양과 수원점 사장님의 친절함에 만족하신 것 같아 기쁩니다.<br>
								해당 내용은 수원점 사장님께 전달드리도록 하겠습니다^^.<br>
								배스킨라빈스를 사랑해주셔서 감사합니다.<br>
								<br>
								- 배스킨라빈스 cs팀 사원 홍길동 드림 -
							</td>
						</tr>
					</table>
				</div>
				<div class="btn_area">
						<a href="http://localhost:9000/br31/cs/voc_list.jsp"><button type="button">목록</button></a>
						<a><button type="button">삭제</button></a>
				</div>
			</form>
		</section>	
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>