<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
div.content{
	font-family:"맑은고딕";
	width:1000px;
	margin:auto;
	margin-top:150px; 
}

section.join div{
	text-align:center;
	
}

form.join_form ul{
	list-style-type : none;
	width:60%;
	margin:auto;
}

form.join_form li label{
	display:inline-block;
	width:20%;
	/*margin:15px 0;*/
	color:#333;
}

.li{
	border:1px solid white;
	border-bottom : 1px solid rgb(128, 128, 161);
	border-radius : 2px;
	margin: 20px  5px 20px 0;
}

/*주소*/
form.join_form li:nth-child(7)>input:last-child{
	/*border:3px solid blue;*/
	display:block;
	margin-left:125px;
	width:450px;
}
/*이메일 정보*/
form.join_form li:nth-child(8) input{
	width:140px;
}

form.join_form li:nth-child(8) span:last-child{
	display : block;
	margin-left:125px;
	color:rgb(128, 128, 161);
	font-size:10px;
}
/*휴대폰 정보*/
form.join_form li:nth-child(6) input{
	width:60px;
}
form.join_form li:nth-child(6) span, form.join_form li:nth-child(8) span:first-child{
	color:rgb(128, 128, 161);
	font-size:25px;
}


/*join section(전체)*/
section.join>div>span{
	color:rgb(128, 128, 161);
	font-size:13px;
	display:inline-block;
	width:60%;
	padding: 0 0 50px 0;
}

section.join>span{
	color:rgb(128, 128, 161);
	font-size: 12px;
	display:block;
	width:60%;
	margin:auto;
	padding: 0 0 10px 0;
}

/*button*/
form.join_form li:last-child{
	text-align:center;
	margin:50px 0 ;
}
.btn_check, .select_style{
	padding:3px 8px;
	margin: 0 10px;
	background-color:white;
	border:1px solid rgb(128, 128, 161);
	border-radius:4px;
	color: gray;
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
.btn_confrim{
	background-color:gray;
	color:white;
}


</style>
</head>
<body>
	<!-- 회원가입 페이지는 외부 페이지와 연결되어서 제가 따로 만들었습니다. -->
	
	<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class = "content">
		<section class = "join">
			<div>
				<h1>회원가입</h1>
				<span>배스킨 라빈스에 오신걸 환영합니다.</span>
			</div>
			<span>*표시되어있는 항목은 필수입력 항목입니다.</span>
			<form name = "join_form" action = "#" method = "get" class = "join_form">
				<ul>
					<li>
						<label>*아이디</label>
						<input type = "text" name = "id" class = "li">
						<button type = "button" name = "check" class = "btn_check">중복확인</button>
					</li>
					<li>
						<label>*비밀번호</label>
						<input type = "password" name = "pass" class = "li">
					</li>
					<li>
						<label>*비밀번호 확인</label>
						<input type = "password" name = "pass" class = "li">
					</li>
					<li>
						<label>*이름</label>
						<input type = "text" name = "name" class = "li">
					</li>
					<li>
						<label>*생년원일</label>
						<input type = "date" name = "birthday" class = "li">
					</li>
					<li>
						<label>*휴대폰</label>
						<select id = "phone1" class = "select_style">
						<option value = "선택" >선택</option>
						<option value = "010" id = "pnum1">010</option>
						<option value = "011" id = "pnum2">011</option>
						<option value = "017" id = "pnum3">017</option>
						</select><span> - </span>
						<input type = "text" name = "phone" class = "li" id = "phone2"><span> - </span>
						<input type = "text" name = "phone" class = "li" id = "phone3">
						<!-- <button type = "button" name = "check" class = "btn_check">휴대폰 인증</button> -->
					</li>
					<li>
						<label>주소</label>
						<input type = "text" name = "adress_number" class = "li">
						<a href = "#"><button type = "button" name = "btn_adress" class = "btn_check">우편번호 검색</button></a>
						<input type = "text" name = "adress" class = "li">
					</li>
					<li>
						<label>*이메일</label>
						<input type = "text" name = "email" class = "li" id = "email1"><span> @ </span>
						<input type = "text" name = "email" class = "li" id = "email2">
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
						<button type = "reset" name = "cancle" class = "btn_cancle">취소</button>
						<button type = "button" name = "comfirm" class = "btn_confrim">가입하기</button>
					</li>
				</ul>
			</form>
			
		</section>
		
	</div>

	
	<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
	

</body>
</html>