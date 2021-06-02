<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	String did = "test";
	String dpass = "1234";
	
	String result = "";
	
	if(id.equals(did) && pass.equals(dpass)){
		/*result = "로그인 성공";*/
		response.sendRedirect("http://localhost:9000/br31/index.jsp");
		
	}else{
		/*result = "로그인 실패";*/
		response.sendRedirect("http://localhost:9000/br31/login/loginFail.jsp");
		
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>