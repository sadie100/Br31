<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.dao.*, com.br31.vo.*, java.util.*,com.br31.vo.SessionVO" %>
<%
	MemberDAO dao = new MemberDAO();
	
	ArrayList<MemberVO> list = dao.getMemberList(); 
	
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	if(svo != null){

%>   
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
					<h1>회원 관리</h1>
					<img src = "http://localhost:9000/br31/images/spoon_right.PNG" class = "spoon_img">
				</div>
			</div>
		</section>
		<!-- content -->
		<section class = "ad_m_content">
			<div id = "member_list">
				<table class = 'admtable'>
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>생년월일</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>이메일</th>
						<th>포인트</th>
						<th>가입일자</th>
						<th>회원탈퇴</th>
					</tr>
					<% for(MemberVO vo : list){ %>
					<tr>
						<td><%= vo.getRno() %></td>
						<td><a href = "admin_member_content.jsp?id=<%= vo.getId() %>&rno=<%= vo.getRno() %>"><%= vo.getId()%></a></td>
						<td><%= vo.getName() %></td>
						<td><%= vo.getBirth() %></td>
						<td><%= vo.getHp() %></td>
						<td><%= vo.getAddr() %></td>
						<td><%= vo.getEmail() %></td>
						<td><%= vo.getPoint() %></td>
						<td><%= vo.getMdate() %></td>
						<% if(vo.getChoice() == 1){ %>
						<td><button type = 'button' class = 'btn_unregister' >회원탈퇴</button></td>
						<% }else{ %> 
						<td><button type = 'button' class = 'btn_unregister' disabled>회원탈퇴</button></td>
						<% } %>
					</tr>
					<% } %>
				</table>
			</div>			
		</section>
		
		<!-- footer -->
		<section class = "ad_m_footer">
			<img src = "http://localhost:9000/br31/images/baskin_logo_admin.png">
		</section>
		
	</div>
</body>
</html>
<% }else{%>
	<script>
		window.alert("로그인후 사용이 가능합니다.");
		location.href = "http://localhost:9000/mycgv/login/login.jsp";
	</script>
<% } %>