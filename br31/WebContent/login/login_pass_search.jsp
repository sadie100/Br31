<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.login_search_content{
	font-family:"맑은고딕";
	width:1000px;
	margin:auto;
	text-align:center;
	margin-top:150px; 
}

div.login_search_title h1{
	text-align:center;
	font-size:33px;
	font-weight:blod;
	color:#333;
}

div.login_search_title span{
	text-align:center;
	font-size:15px;
	font-weight:blod;
	color:gray;
}

div.login_search_title{
	margin-bottom:40px;
}

/****
아이디 비밀번호 찾기 방법 선택 하는 부분
***/
div.s_content div:first-child a{
	text-decoration:none;
	
}
div.s_content div:first-child span{
	display:inline-block;
	width: 330px;
	padding:15px 0;
	font-size:15px;
	font-weight:bold;
	margin-bottom:50px;
}
div.s_content div:first-child a:last-child span{
	border-bottom: 3px solid rgb(254, 79, 39);
	color: rgb(254, 79, 39);
}
div.s_content div:first-child a:first-child span{
	border-bottom: 1px solid lightgray;
	color: gray;
}

/*휴대폰, 아이핀 이미지*/
div.s_content>div:nth-child(2){
	margin-bottom:80px;
}

div.s_content>div:nth-child(2)>div:first-child, div.s_content>div:nth-child(2)>div:nth-child(2){
	border:1px solid lightgray;
	border-radius:4px;
	display:inline-block;
	margin: 0 7px;
}

div.s_content>div:nth-child(2)>div:first-child{
	padding: 25px 95px;
}

div.s_content>div:nth-child(2)>div:nth-child(2){
	padding: 27px 110px;
}

div.s_content>div:nth-child(2)>div:first-child:hover, div.s_content>div:nth-child(2)>div:nth-child(2):hover{
	border:1px solid rgb(254, 79, 39);
}

/*회원가입 페이지로 넘어가는 부분*/
section.go_join div{
	margin-bottom:130px;
}
section.go_join div span{
	display:block;
}
section.go_join div span:first-child{
	font-size:16px;
	font-weight:bold;
	color:#333;
	margin-bottom:15px;
}

div.s_content>div:nth-child(2)>div:first-child button{
	background-image : url("http://localhost:9000/br31/images/id_search_phone.PNG");
	width:124px;
	height:139px;
	border:none;
}
div.s_content>div:nth-child(2)>div:last-child button{
	background-image : url("http://localhost:9000/br31/images/id_search_ipin.PNG");
	width:96px;
	height:137px;
	border:none;
}

section.go_join div span:nth-child(2){
	font-size:12px;
	color:gray;
	margin-bottom:30px;
}

/*회원가입 페이지로 넘어가는 버튼*/
.go_join_button{
	border: 1px solid rgb(254, 79, 39);
	border-radius:8px;
	background-color:white;
	color:rgb(254, 79, 39);
	font-size:15px;
	font-weight:bold;
	padding: 11px 30px;
}
</style>
<script>

/******
	팝업창 띄우기
*****/

function showPop1(){
	window.open("login_phone.html","휴대폰 인증","width = 350, height = 270");
}

function showPop2(){
	window.open("login_ipin.html","아이핀 인증","width = 350, height = 270");
}

</script>
</head>
<body>
	<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include> 
	
	
	<!-- content -->
	<div class = "login_search_content">
		<section class = "id_search_content">
		 	<div class = "login_search_title">
		 		<h1>아이디/비밀번호 찾기</h1>
		 		<span>아이디가 기억나지 않으세요?<br>
		 		본인인증을 통해 아이디를 확인하실 수 있어요!</span>
		 	</div>
		 	<div class = "s_content">
		 		<div>
		 			<a href = "login_id_search.jsp"><span>아이디 찾기</span></a>
		 			<a href = "login_pass_search.jsp"><span>비밀번호 초기화</span></a>
		 		</div>
		 		<div>
		 			<div>
		 				<button type = "button" onclick = "showPop1()"></button>
		 			</div>
		 			<div>
		 				<button type = "button" onclick = "showPop2()"></button>
		 			</div>
		 		</div>
		 	</div>
		</section>
		<section class = "go_join">
			<div>
				<span>아직 배스킨라빈스 회원이 아니세요?</span>
				<span>ONEPASS 간편 가입으로 멤버십과 SPC 다양한 브랜드 혜택을 모두 이용 할 수 있어요!</span>
				<a href = "http://loacalhost:9000/br31/join/join.jsp"><button type = "button" class = "go_join_button">회원가입 바로가기</button>
			</div>
		</section>
	
	
	</div>
	

	<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>