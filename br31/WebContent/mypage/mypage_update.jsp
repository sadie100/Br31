<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.vo.*, com.br31.dao.*, com.br31.vo.SessionVO" %>    
<%
	String id = "test";
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.getMemberContent(id);
	
	dao.close();
	
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	if(svo != null){	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정</title>
<script src = "http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<link rel = "stylesheet" href = "http://localhost:9000/br31/choi.css">
<script>
	$(document).ready(function(){
		$("button#btnMypageUpdate").click(function(){
			if($("#pass").val() == ""){
				alert("새로운 비밀번호를 입력해주세요");
				$("#pass").focus();
				return false
				
			}else if($("#cpass").val() == ""){
				alert("비밀번호 확인을 입력해주세요");
				$("#cpass").focus();
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
				mupdate_form.submit();
				
			}
			
		});//form_check
		
		
		//비밀번호와 비밀번호 확인 일치 체크
		$("#cpass").blur(function(){
			if($("#pass").val() != "" && $("#cpass").val() != ""){
				if($("#pass").val() == $("#cpass").val()){
					alert("비밀번호가 일치합니다");
				}else{
					alert("비밀번호가 일치하지 않습니다");
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
				<form name = "mupdate_form" action = "mypage_update_process.jsp" method = "post" class = "update_form">
					<input type = "hidden" name = "id" value = "<%= id %>">
					<ul>
						<li>
							<label>이름</label>
							<input type = "text" name = "name" class = "li" value =<%=vo.getName() %> disabled>
						</li>
						<li>
							<label>성별</label>
							<input type = "text" name = "gender" class = "li" value =<%=vo.getGender() %> disabled>
						</li>
						<li>
							<label>생년월일</label>
							<input type = "date" name = "birthday" value = <%=vo.getBirth() %> class = "li">
						</li>
						<li>
							<label>휴대폰</label>
							<select id = "phone1" name = "phone1" class = "select_style">
								<option value = "<%=vo.getHp1()%>" hidden><%= vo.getHp1() %></option>
								<option value = "선택" >선택</option>
								<option value = "010" id = "pnum1">010</option>
								<option value = "011" id = "pnum2">011</option>
								<option value = "017" id = "pnum3">017</option>
							</select><span> - </span>
							<input type = "text" name = "phone2" class = "li" id = "phone2" value = "<%=vo.getHp2()%>"><span> - </span>
							<input type = "text" name = "phone3" class = "li" id = "phone3" value = "<%=vo.getHp3()%>">
						</li>
						<li>
							<label>아이디</label>
							<input type = "text" name = "id" class = "li" value = <%=vo.getId() %> disabled>
						</li>
						<li>
							<label>새 비밀번호</label>
							<input type = "password" name = "pass" class = "li" id = "pass">
						</li>
						<li>
							<label>비밀번호 확인</label>
							<input type = "password" name = "cpass" class = "li" id = "cpass">
						</li>
						<li>
							<label>주소</label>
							<input type = "text" name = "address_number" class = "li" value="<%=vo.getAddr1()%>">
							<a href = "#"><button type = "button" name = "btn_adress" class = "btn_check">우편번호 검색</button></a>
							<input type = "text" name = "address" class = "li" value = "<%=vo.getAddr2()%>">
						</li>
						<li>
							<label>이메일</label>
							<input type = "text" name = "email1" class = "li" id = "email1" value = "<%=vo.getEmail1()%>"><span> @ </span>
							<input type = "text" name = "email2" class = "li" id = "email2" value = "<%= vo.getEmail2()%>">
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
							<button type = "button" name = "confirm" class = "btn_confrim" id = "btnMypageUpdate">확인</button>
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
<% }else{%>
	<script>
		window.alert("로그인후 사용이 가능합니다.");
		location.href = "http://localhost:9000/mycgv/login/login.jsp";
	</script>
<% } %>