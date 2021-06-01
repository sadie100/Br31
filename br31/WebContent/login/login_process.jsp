<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	String did = "test";
	String dpass = "1234";
	
	String result = "";
	
	if(id.equals(did) && pass.equals(dpass)){
		result = "로그인 성공";
		
	}else{
		result = "로그인 실패";
		
	}
	
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
	<h1><%= result %></h1>
</body>
</html>