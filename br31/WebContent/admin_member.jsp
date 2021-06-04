<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myweb2/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		var memberList = { "memberInfo" : [
							{"id":"hong","pass":"1234","name":"홍길동","birth":"1990-01-01","phone":"010-1234-5678","addr":"서울시 강남구 테헤란로","email":"hong1234@naver.com","point":"0","joind":"2021-05-26"},
							{"id":"hong","pass":"1234","name":"홍길동","birth":"1990-01-01","phone":"010-1234-5678","addr":"서울시 강남구 테헤란로","email":"hong1234@naver.com","point":"0","joind":"2021-05-26"},
							{"id":"hong","pass":"1234","name":"홍길동","birth":"1990-01-01","phone":"010-1234-5678","addr":"서울시 강남구 테헤란로","email":"hong1234@naver.com","point":"0","joind":"2021-05-26"}
							]
		};
		
		var text = "";
		
		text += "<table class = 'admtable'>";
		text += "<tr><th>아이디</th><th>비밀번호</th><th>이름</th><th>생년월일</th><th>전화번호</th><th>주소</th><th>이메일</th><th>포인트</th><th>가입일자</th><th>회원탈퇴</th></tr>"
		for(var i = 0; i<memberList.memberInfo.length; i++){
			text += "<tr>";
				text += "<td>" + memberList.memberInfo[i].id + "</td>";
				text += "<td>" + memberList.memberInfo[i].pass + "</td>";
				text += "<td>" + memberList.memberInfo[i].name + "</td>";
				text += "<td>" + memberList.memberInfo[i].birth + "</td>";
				text += "<td>" + memberList.memberInfo[i].phone + "</td>";
				text += "<td>" + memberList.memberInfo[i].addr + "</td>";
				text += "<td>" + memberList.memberInfo[i].email + "</td>";
				text += "<td>" + memberList.memberInfo[i].point + "</td>";
				text += "<td>" + memberList.memberInfo[i].joind + "</td>";
				text += "<td>" + "<button type = 'button' class = 'btn_unregister'>회원탈퇴</button>" + "</td>";
			text += "</tr>"
		}
		text += "</table>";
		
		$("#member_list").after(text);
		
		
	});
</script>
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
			<div id = "member_list"></div>			
		</section>
		
		<!-- footer -->
		<section class = "ad_m_footer">
			<img src = "http://localhost:9000/br31/images/baskin_logo_admin.png">
		</section>
		
	</div>
</body>
</html>