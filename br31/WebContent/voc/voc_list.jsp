<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 문의함</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/cs.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="cs_header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="cs_content">
		<section class="voc_list">
			<h3>고객센터 내 문의함</h3>
			<form name="voc_list_form" action="#" method="get">
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
							<td><a href="http://localhost:9000/br31/voc/voc_content.jsp">배라 수원점 사장님을 칭찬합니다!</a></td>
							<td>2021-05-22</td>
							<td>답변완료</td>
						</tr>
						<tr>
							<td>2</td>
							<td>문의</td>
							<td>제품</td>
							<td><a href="#">엄마는 외계인에 들어있는 초코볼을 사고 싶어요ㅠㅠ</a></td>
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