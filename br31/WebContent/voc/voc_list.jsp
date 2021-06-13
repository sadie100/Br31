<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.br31.dao.VocDAO, com.br31.vo.VocVO, java.util.*" %>
<%
	VocDAO dao = new VocDAO();
	ArrayList<VocVO> list = dao.getList();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 문의함</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/cs.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="cs_header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="cs_content">
		<section class="voc_list">
			<h3>고객센터 내 문의함</h3>
			<div class="voc_list_content">
				<div class="list">
					<table>
						<tr>
							<th>번호</th>
							<th>상담유형</th>
							<th>내용유형</th>
							<th>제목</th>
							<th>접수일</th>
							<th>상태</th>
						</tr>
						<% for(VocVO vo : list) { %>
						<tr>
							<td><%= vo.getRno() %></td>
							<td><%= vo.getQtype() %></td>
							<td><%= vo.getCtype() %></td>
							<td><a href="http://localhost:9000/br31/voc/voc_content.jsp?vid=<%=vo.getVid()%>"><%= vo.getTitle() %></a></td>
							<td><%= vo.getVdate() %></td>
							<td><%= vo.getStatus() %></td>
						</tr>
						<% } %>
					</table>
				</div>
			</div>
		</section>	
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>