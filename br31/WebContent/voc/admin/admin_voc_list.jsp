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
	<jsp:include page="../../admin_header.jsp"></jsp:include>
	<jsp:include page="admin_cs_header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="cs_content">
		<section class="voc_list">
			<h3>[관리자] 고객센터 문의 목록</h3>
			<div class="voc_list_content">
				<div class="voc_search_bar">
					<select>
						<option value="상담유형">상담유형</option>
						<option value="칭찬">칭찬</option>
						<option value="불만">불만</option>
						<option value="문의">문의</option>
						<option value="제안">제안</option>
						<option value="제보">제보</option>
					</select>
					<select>
						<option value="내용유형">내용유형</option>
						<option value="제품">제품</option>
						<option value="인적서비스">인적서비스</option>
						<option value="점포서비스">점포서비스</option>
						<option value="이벤트">이벤트</option>
						<option value="HP카드">HP카드</option>
						<option value="모바일쿠폰">모바일쿠폰</option>
						<option value="기타">기타</option>
					</select>
					<input type="text" id="voc_search">
					<button type="button">검색</button>
				</div>
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
						<% int count=0; for(VocVO vo : list) { %>
						<tr>
							<td><%= vo.getRno() %></td>
							<td><%= vo.getQtype() %></td>
							<td><%= vo.getCtype() %></td>
							<% if(vo.getStatus().equals("답변대기")) { %>
								<td><a href="http://localhost:9000/br31/voc/admin/admin_voc_write.jsp?vid=<%=vo.getVid()%>"><%= vo.getTitle() %></a></td>
							<% } else { %>
								<td><a href="http://localhost:9000/br31/voc/admin/admin_voc_content.jsp?vid=<%=vo.getVid()%>"><%= vo.getTitle() %></a></td>
							<% } %>
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
	<jsp:include page="../../footer.jsp"></jsp:include>

</body>
</html>