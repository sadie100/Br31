<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>br_login</title>
</head>
<body>
	<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include> 
	
	<!-- content -->
	<div class = "content">
		<section class = "login">
			<img src = "http://localhost:9000/br31/images/h_login.png">
				<h4>배스킨 라빈스 홈페이지에 오신 것을 환영합니다.</h4>
				<h4>배스킨라빈스 로그인 해피포인트 아이디로 간편하게 로그인 하세요.</h4>
				
			<!-- 로그인 -->	
			<form name = "login_form" action = "#" method = "get"> 
				<fieldset>
				<legend>로그인</legend>
					<ul>
						<input type = "login"  id = "id" name = "id" placeholder = "아이디를 입력하세요" >
						<input type = "password" id = "pass" name = "pass" placeholder = "비밀번호를 입력하세요">
						<button type = "button">로그인</button>
					</ul>
				</fieldset>
			</form>
			<ul>
				<li><a href = "login_search.jsp">아이디 찾기</a></li> 
				<li><a href = "#">비밀번호 재발급</a></li> 
				<li><a href = "../join/join.jsp">해피포인트 가입</a></li> 
			</ul>
			
			<h3>SPC 통합회원 서비스</h3>
			<h4>
				하나의 ID/Password로 SPC가 운영하는 사이트(배스킨라빈스, 던킨도너츠, 
				해피포인트카드, 파리바게뜨, 파리크라상, 파스쿠찌, SPC그룹,우리밀愛)를 한번에!!
				간단한 동의 절차만 거치면 하나의 ID/Password로 제휴사이트를
				로그인 하실 수 있습니다. 
			</h4>
			
			<h3>고객센터</h3>
			<h4></h4>
			
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>