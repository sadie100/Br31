<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/br31.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- content -->
		
	<div class="content">
		<section class="notice_content">
			<h1 class="title">공지사항</h1>
			<table class="content_layout">
				<tr>
					<th>번호</th>
					<td>1</td>
					<th>날짜</th>
					<td>2021-05-14</td>
					<th>조회수</th>
					<td>123</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="5"> [신제품 출시] 밀탑의 시그니처 국내산 팥으로 더욱 맛있어진 팥빙수 블라스트 출시!</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="5"> ※ 유의사항

- 일부 점포에 한해서 운영됩니다.

- 운영 점포는 변동 될 수 있으므로 방문 전 사전 문의 바랍니다.

- 팥빙수 블라스트 취급점은 좌측 하단 행사 매장 보기에서 확인하실 수 있습니다. <br><br><br></td>
				</tr>
				<tr>
					<td colspan="6">
						<a href="notice_list.jsp"><button type="button" class="btn_style2">목록</button></a>
						<a href="http://localhost:9000/br31/index.jsp"><button type="button" class="btn_style2">홈으로</button></a>
					</td>
				</tr>
			</table>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>


</body>
</html>