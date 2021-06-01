<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birthday = request.getParameter("birthday");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String addr_number = request.getParameter("addr_number");
	String addr = request.getParameter("addr");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	
	String result = "";
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML 출력 -->
	<h1>아이디 : <%= id %></h1>
	<h1>비밀번호 : <%= pass %></h1>
	<h1>이름 : <%= name %></h1>
	<h1>성별 : <%= gender %></h1>
	<h1>생년월일 : <%= birthday %></h1>
	<span>전화번호 : <%= phone1 %> - <%= phone2 %> - <%= phone3 %></span>
	<h1>이메일 : <%= email1 %> @ <%= email2 %></h1>
</body>
</html>