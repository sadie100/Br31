<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myweb2/js/jquery-3.6.0.min.js"></script>
<link rel = "stylesheet" href = "http://localhost:9000/br31/choi.css">
</head>
<body>
	<div class = "member_content">
		<!-- header -->
		<jsp:include page = "admin_header.jsp"></jsp:include>
		
		<section class = "ad_m_header">
			<div class = "member_title">
				<div>
					<img src = "http://localhost:9000/br31/images/spoon_left.PNG" class = "spoon_img">
					<h1>회원 정보</h1>
					<img src = "http://localhost:9000/br31/images/spoon_right.PNG" class = "spoon_img">
				</div>
			</div>
		</section>
		<!-- content -->
		<section class = "member_content">
			<table class = "m_content_table">
				<tr>
					<th>이름</th>
					<td>홍길동</td>
					<th>성별</th>
					<td>남</td>
					<th>나이</th>
					<td>23</td>
					<th>포인트</th>
					<td>0</td>
					<th>가입일</th>
					<td>2021-01-01</td>
				</tr>
				<tr>
					<th>휴대전화 번호</th>
					<td colspan = "9">010-1234-5678</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td colspan = "9">hong1234@naver.com</td>
				</tr>
				<tr>
					<th>주소</th>
					<td colspan = "9">(1234)서울시 강남구 테헤란로</td>
				</tr>
				<tr class = "admintable_btn">
					<td colspan = "10">
						<button type = "button" class = "btn_confrim" disabled>회원 탈퇴</button>
						<button type = "button" class = "btn_cancle">이전으로</button>
					</td>
				</tr>
			</table>		
		</section>
	</div>
</body>
</html>