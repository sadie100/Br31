<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.vo.*, com.br31.dao.*" %> 
<%
	MemberDAO dao = new MemberDAO();
	MemberVO vo = new MemberVO();
	
	vo.setId(request.getParameter("id"));
	vo.setPass(request.getParameter("pass"));
	vo.setHp1(request.getParameter("phone1"));
	vo.setHp2(request.getParameter("phone2"));
	vo.setHp3(request.getParameter("phone3"));
	vo.setAddr1(request.getParameter("address_number"));
	vo.setAddr2(request.getParameter("address"));
	vo.setEmail1(request.getParameter("email1"));
	vo.setEmail2(request.getParameter("email2"));
	
	boolean result = dao.mypageUpdateResult(vo); 
	dao.close();
	
	if(result){
		response.sendRedirect("mypage_update.jsp");
		//리스트 페이지로 페이지 이동
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