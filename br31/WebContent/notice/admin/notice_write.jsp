<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/admin_br31_m.css">
<script type="text/javascript" src="http://localhost:9000/br31/js/br31.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../admin_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
		<section class="board_write">
			<h3 class="line_title">
			<span> <img
				src="http://localhost:9000/br31/images/h_notice.png" alt="NOTICE">
			</span> [관리자] 공지사항
			</h3>
			<form name="notice_write" action="notice_write_process.jsp" method="post" enctype="multipart/form-data">
				<table class="content_layout">
					<tr>
						<th>제목</th>
						<td>
							<input type="text" name="title" id="title">
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea name="ncontent"></textarea>
						</td>
					</tr>
					<tr>
						<th>파일첨부</th>
						<td>
							<input type="file" name="nfile">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="button" class="btn_style2" onclick="noticeFormCheck()">저장</button>
							<button type="reset" class="btn_style2">취소</button>
							<a href="notice_list.jsp"><button type="button" class="btn_style2">목록</button></a> <a href="http://localhost:9000/br31/adminIndex.jsp"><button type="button" class="btn_style2">홈으로</button></a>
						</td>
					</tr>
				</table>
			</form>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>