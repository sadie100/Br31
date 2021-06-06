<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.dao.*" %>    
<% 
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	MemberDAO dao = new MemberDAO();
	boolean result = dao.getLoginResult(id, pass);
	
	if(result == true){
		/*result = "로그인 성공";*/
		response.sendRedirect("http://localhost:9000/br31/index.jsp?id=" + id);
		
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