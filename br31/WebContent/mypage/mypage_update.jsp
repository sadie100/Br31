<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정</title>
</head>
<style>
div.content{
	font-family:"맑은고딕";
	width:1000px;
	margin:auto;
	margin-top:150px; 
}
div.content section.m_menu{
	text-align:center;
}
div.content section.m_menu ul img{
	margin: 0 10px;
	height: auto;
	width:145px;
}
div.content section.m_menu ul {
	border: 1px solid lightgray;
	border-bottom : 3px solid rgb(255, 124, 152);
	display: inline-block;
	border-radius: 30px 30px 0 0 ;
	margin: 10px 0 70px 0;
}
div.content section.m_content div:first-child{
	text-align:center;
}
div.content section.m_content{
	width:60%;
	margin:auto;
}

form.update_form ul{
	list-style-type : none;
	/*width:60%;
	margin:auto;*/
}

form.update_form li label{
	display:inline-block;
	width:20%;
	color:#333;
}

/*주소*/
form.update_form li:nth-child(6)>input:last-child{
	/*border:3px solid blue;*/
	display:block;
	margin-left:125px;
	width:450px;
}

/*이메일 정보*/
form.update_form li:nth-child(7) input{
	width:130px;
}
form.update_form li:nth-child(7) span:last-child{
	display : block;
	margin-left:120px;
	color:rgb(128, 128, 161);
	font-size:10px;
}

/*휴대폰 정보*/
form.update_form li:nth-child(3) input{
	width:60px;
}
form.join_form li:nth-child(3) span, form.join_form li:nth-child(8) span:first-child{
	color:rgb(128, 128, 161);
	font-size:25px;
}

/*회원정보 수정 전체 section에 관한 부분*/
section.m_content>div>span{
	color:rgb(128, 128, 161);
	font-size:13px;
	display:inline-block;
	width:60%;
	padding: 0 0 50px 0;
}



.li{
	border:1px solid white;
	border-bottom : 1px solid rgb(128, 128, 161);
	border-radius : 2px;
	margin: 20px  5px 20px 0;
}

/*button*/
form.update_form li:last-child{
	text-align:center;
	margin:50px 0 ;
}

.btn_cancle, .btn_confrim{
	padding:5px 20px;
	margin: 0 5px;
	background-color:white;
	border:1px solid rgb(128, 128, 161);
	border-radius:4px;
	color: gray;
	font-size:15px;
}
.btn_check, .select_style{
	padding:3px 8px;
	margin: 0 10px;
	background-color:white;
	border:1px solid rgb(128, 128, 161);
	border-radius:4px;
	color: gray;
}
.btn_confrim{
	background-color:gray;
	color:white;
}
</style>
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