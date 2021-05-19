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
			<img src = "">
				<h3>배스킨라빈스 로그인</h3>
				<h5>해피포인트 아이디로 간편하게 로그인 하세요.</h5>
				
			<!-- 로그인 -->	
			<form name = "login_form" action = "#" method = "get"> 
			<fieldset>
			<legend>로그인</legend>
			<ul>
				<input type = "login" name = "id" vlaue = "아이디를 입력하세요">
				<input type = "password" name = "pass" vlaue = "비밀번호를 입력하세요">
				<button type = "button">로그인</button>
			</ul>
			</fieldset>
			</form>
			<ul>
				<li><a href = "#">아이디 찾기</a></li> 
				<li><a href = "#">비밀번호 재발급</a></li> 
				<li><a href = "#">해피포인트 가입</a></li> 
			</ul>
		</section>
	</div>
	
	<!-- footer -->
</body>
</html>