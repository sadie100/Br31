<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정</title>
</head>
<link rel = "stylesheet" href = "http://localhost:9000/br31/choi.css">
<body>
	<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include>
	<div class = "content">
		<section class = "m_menu">
			<nav>
			<img src = "http://localhost:9000/br31/images/mybr.PNG">
			<h4>회원님을 위한 배스킨라빈스의 다양한 정보</h4>
				<ul>
					<a href = "mypage.jsp"><img src = "http://localhost:9000/br31/images/1st_mypage.PNG"
					onmouseover="this.src='http://localhost:9000/br31/images/1st_mypage_onclick.PNG'" 
					onmouseout="this.src='http://localhost:9000/br31/images/1st_mypage.PNG'"></a>
					<a href = "mypage_f_shop.jsp"><img src = "http://localhost:9000/br31/images/2st_mypage.PNG"
					onmouseover="this.src='http://localhost:9000/br31/images/2st_mypage_onclick.PNG'" 
					onmouseout="this.src='http://localhost:9000/br31/images/2st_mypage.PNG'"></a>
					<a href = "mypage_f_flavor.jsp"><img src = "http://localhost:9000/br31/images/3st_mypage.PNG"
					onmouseover="this.src='http://localhost:9000/br31/images/3st_mypage_onclick.PNG'" 
					onmouseout="this.src='http://localhost:9000/br31/images/3st_mypage.PNG'"></a>
					<a href = "mypage_update.jsp"><img src = "http://localhost:9000/br31/images/4st_mypage_onclick.PNG"></a>
					<a href = "mypage_unregister.jsp"><img src = "http://localhost:9000/br31/images/5st_mypage.PNG"
					onmouseover="this.src='http://localhost:9000/br31/images/5st_mypage_onclick.PNG'" 
					onmouseout="this.src='http://localhost:9000/br31/images/5st_mypage.PNG'"></a>
				</ul>
			</nav>
		</section>
		<section class = "m_content">
			<div>
				<h1>회원정보 수정</h1>
				<span>고객님의 소중한 정보를 안전하게 관리하세요.</span>
			</div>
				<form name = "mupdate_form" action = "#" method = "get" class = "update_form">
					<ul>
						<li>
							<label>이름</label>
							<input type = "text" name = "name" class = "li" value = "홍길동" disabled>
						</li>
						<li>
							<label>생년월일</label>
							<input type = "date" name = "birthday" class = "li">
						</li>
						<li>
							<label>휴대폰</label>
							<select id = "phone1" class = "select_style">
								<option value = "선택" >선택</option>
								<option value = "010" id = "pnum1">010</option>
								<option value = "011" id = "pnum2">011</option>
								<option value = "017" id = "pnum3">017</option>
							</select><span> - </span>
							<input type = "text" name = "phone" class = "li" id = "phone2"><span> - </span>
							<input type = "text" name = "phone" class = "li" id = "phone3">
							<button type = "button" name = "check" class = "btn_check">변경하기</button>
						</li>
						<li>
							<label>아이디</label>
							<input type = "text" name = "id" class = "li" value = "hong1234" disabled>
						</li>
						<li>
							<label>비밀번호</label>
							<input type = "text" name = "pass" class = "li">
							<button type = "button" name = "check" class = "btn_check">변경하기</button>
						</li>
						<li>
							<label>주소</label>
							<input type = "text" name = "adress_number" class = "li" value="1234">
							<a href = "#"><button type = "button" name = "btn_adress" class = "btn_check">우편번호 검색</button></a>
							<input type = "text" name = "adress" class = "li" value = "서울시 강남구 테헤란로">
						</li>
						<li>
							<label>이메일</label>
							<input type = "text" name = "email" class = "li" id = "email1" value = "hong1234"><span> @ </span>
							<input type = "text" name = "email" class = "li" id = "email2" value = "naver.com">
							<select id = "email3" class = "select_style">
								<option value = "선택">선택</option>
								<option value = "naver.com" id = "addr1">naver.com</option>
								<option value = "gmail.com" id = "addr2">gamil.com</option>
								<option value = "daum.net" id = "addr3">daum.net</option>
								<option value = "직접입력" id = "addr4">직접입력</option>
							</select>
							<span>* hotmail, yahoo, gmail, msn 등의 해외 메일은 수신이 정상적이지 않을 수 있습니다.</span>
						</li>
						<li>
							<button type = "button" name = "cancle" class = "btn_cancle">취소</button>
							<button type = "button" name = "comfirm" class = "btn_confrim">확인</button>
						</li>
					</ul>
				</form>
		</section>
		
	</div>
	<!-- content -->
	
	<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>