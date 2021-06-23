<%@page import="com.br31.dao.EventDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//

String articleno = request.getParameter("articleno");
String rno = request.getParameter("rno");

EventDAO dao = new EventDAO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/br31.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../../admin_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
		<section class="event_delete">
			<h1 class="title">관리자 - 공지사항</h1>
			<div class="content_layout">
				<h3>정말로 삭제하시겠습니까?</h3> <img src="../../images/img1.jpg">
				<div>
					<a href="event_delete_process.jsp?articleno=<%=articleno%>">
						<button type="button" class="btn_style2">삭제완료</button>
					</a>
					<a href="event_content.jsp?articleno<%=articleno%>&rno=<%=rno%>">
						<button type="button" class="btn_style2">이전 페이지</button>
					</a>
					<a href="event_list.jsp">
						<button type="button" class="btn_style2">목록</button>
					</a>
				</div>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>