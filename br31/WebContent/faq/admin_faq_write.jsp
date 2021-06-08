<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/cs.css">
</head>
<body>
	<form name="faq_write_form" action="#" method="post" class="faq_write_form">
		<h3>FAQ 등록</h3>
		<table>
			<tr>
				<th>
					<label><img src="http://localhost:9000/br31/images/icon_question.gif">질문</label>
				</th>
				<td>
					<input type="text" name="title">
				</td>
			</tr>
			<tr>
				<th>
					<label><img src="http://localhost:9000/br31/images/icon_answer.gif">답변</label>
				</th>
				<td>
					<input type="text" name="content">
				</td>
			</tr>
			<tr>
				<th>
					<label>첨부파일</label>
				</th>
				<td>
					<input type="file" name="file">
				</td>
			</tr>
		</table>
		<div class="faq_write_btns">
			<a href="#"><button type="button">등록</button></a>
			<a href="#"><button type="button">취소</button></a>
		</div>
	</form>
</body>
</html>