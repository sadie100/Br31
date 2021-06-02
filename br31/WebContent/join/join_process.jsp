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
	
	boolean joinResult = true;
	if(joinResult == true){
		response.sendRedirect("joinSuccess.jsp");
		
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