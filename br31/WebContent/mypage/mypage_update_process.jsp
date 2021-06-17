<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.vo.*, com.br31.dao.*" %> 
<jsp:useBean id = "vo" class = "com.br31.vo.MemberVO" 	/>
<jsp:setProperty name = "vo" property = "*"	/>
<%
	//자바 bean으로 수정하기!

	MemberDAO dao = new MemberDAO();
	boolean result = dao.mypageUpdateResult(vo); 
	
	dao.close();
	
	if(result == true){
		response.sendRedirect("mypage_update.jsp");
		//리스트 페이지로 페이지 이동
	}else{
		response.sendRedirect("http://localhost:9000/br31/error_page.jsp");
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