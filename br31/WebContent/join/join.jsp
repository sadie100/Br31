<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel = "stylesheet" href = "http://localhost:9000/br31/choi.css">
<script src = "http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function(){
		$("button#joinBtn").click(function(){
			if($("#id").val() == ""){
				alert("아이디를 입력해주세요");
				$("#id").focus();
				return false
				
			}else if($("#pass").val() == ""){
				alert("비밀번호를 입력해주세요");
				$("#pass").focus();
				return false
				
			}else if($("#cpass").val() == ""){
				alert("비밀번호 확인을 입력해주세요");
				$("#cpass").focus();
				return false
				
			}else if($("#name").val() == ""){
				alert("이름을 입력해주세요");
				$("#name").focus();
				return false
				
			}else if($("#birth").val() == ""){
				alert("생년월일을 입력해주세요");
				$("#birth").focus();
				return false
				
			}else if($("#phone1").val() == $("#pnum").val()){
				alert("전화번호를 선택해주세요");
				$("#phone1").focus();
				return false
				
			}else if($("#phone2").val() == ""){
				alert("두번쨰 전화번호를 입력해주세요");
				$("#phone2").focus();
				return false
				
			}else if($("#phone3").val() == ""){
				alert("세번째 전화번호를 입력해주세요");
				$("#phone3").focus();
				return false
				
			}else if($("#email1").val() == ""){
				alert("이메일을 입력해주세요");
				$("#email1").focus();
				return false
				
			}else if($("#email2").val() == ""){
				alert("이메일 주소를 선택해주세요");
				$("#email3").focus();
				return false
				
			}else{
				join_form.submit();
				
			}
			
		});//form_check
		
		
		//비밀번호와 비밀번호 확인 일치 체크
		$("#cpass").blur(function(){
			if($("#pass").val() != "" && $("#cpass").val() != ""){
				if($("#pass").val() == $("#cpass").val()){
					alert("비밀번호가 일치합니다");
					/*$("div#msg").text("비밀번호가 일치합니다.").css({"font-size":"13px","color":"blue","padding":"0"});*/
				}else{
					alert("비밀번호가 일치하지 않습니다");
					/*$("div#msg").text("비밀번호가 일치하지 않습니다.").css({"font-size":"13px","color":"red","padding":"0"});*/
					$("#pass").focus();
					$("#pass").val() = "";
					$("#cpass").val() = "";
				}
			}else{
				alert("비밀번호를 입력해주세요");
			}
			
		});
		
		//이메일 체크
		$("#email3").change(function(){
			if($("#email3").val() == "choice"){
				alert("다른 주소를 선택해주세요");
				$("#email3").focus();
				$("#email2").val("");
			}else{
				$("#email2").val($("#email3").val());
			}
		});
		
		
	});//document ready
	
</script>
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
						<input type = "text" name = "id" class = "li" id = "id">
						<button type = "button" name = "check" class = "btn_check">중복확인</button>
					</li>
					<li>
						<label>*비밀번호</label>
						<input type = "password" name = "pass" class = "li" id = "pass">
					</li>
					<li>
						<label>*비밀번호 확인</label>
						<input type = "password" name = "pass" class = "li" id = "cpass">
						<!-- <div id = "msg"></div> -->
					</li>
					<li>
						<label>*이름</label>
						<input type = "text" name = "name" class = "li" id = "name">
					</li>
					<li>
						<label>*생년원일</label>
						<input type = "date" name = "birthday" class = "li" id = "birth">
					</li>
					<li>
						<label>*휴대폰</label>
						<select id = "phone1" class = "select_style">
						<option value = "선택" id = "pnum">선택</option>
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
						<input type = "text" name = "adress_number" class = "li" id = "addr1">
						<a href = "#"><button type = "button" name = "btn_adress" class = "btn_check" id = "addr2">우편번호 검색</button></a>
						<input type = "text" name = "adress" class = "li" id = "addr3">
					</li>
					<li>
						<label>*이메일</label>
						<input type = "text" name = "email" class = "li" id = "email1"><span> @ </span>
						<input type = "text" name = "email" class = "li" id = "email2">
						<select id = "email3" class = "select_style">
							<option  value = "choice">선택</option>
							<option  value = "naver.com">naver.com</option>
							<option  value = "gmail.com">gamil.com</option>
							<option value = "daum.net">daum.net</option>
						</select>
						<span>* hotmail, yahoo, gmail, msn 등의 해외 메일은 수신이 정상적이지 않을 수 있습니다.</span>
					</li>
					<li>
						<button type = "reset" name = "cancle" class = "btn_cancle" id = "joinCancle">취소</button>
						<button type = "button" name = "comfirm" class = "btn_confrim" id = "joinBtn">가입하기</button>
					</li>
				</ul>
			</form>
			
		</section>
		
	</div>

	
	<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
	

</body>
</html>