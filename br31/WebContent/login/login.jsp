<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
div.content{
	font-family:"맑은고딕";
	width:1000px;
	margin:auto;
	margin-top:150px; 
}

div.title{
	border-bottom:2px solid rgb(255, 124, 152);
	text-align:center;
	font-size:19px;
	font-weight:blod;
	color:#333;
	padding-bottom:35px;
}

div.title img{
	display:block;
	margin:auto;
	padding:15px;
}

/*로그인 하는 부분*/
div.login_div{
	float:left;
	margin:50px 0;
	border-right:2px solid rgb(239, 239, 239);
	
}
div.login_div>span:first-child{
	font-size:16px;
	display:block;
	font-weight:bold;
}
div.login_div>span:nth-child(2){
	font-size:16px;
	padding-top: 3px;
	color: rgb(255, 124, 152);
}

div.login_div form.login_form fieldset{
	border:none;
	color:white;
	padding:0;
	margin:0;
}

div.login_div form.login_form{
/*	border:1px solid blue;*/
	padding:0;
}

div.login_div form.login_form div:first-child{
/*border:1px solid green;*/
	float:left;
	margin-right:20px;
	margin-left:-40px;
}

div.login_div form.login_form div:nth-child(2){
/*border:1px solid red;*/
	float:right;
	margin-right:20px;
}

div.login_div form.login_form input{
	display:block;
	background-color:rgb(239, 239, 239);
	border: none;
	padding:18px;
	padding-right:130px;
	margin-bottom:10px;
}

div.login_div form.login_form button{
	width:125px;
	height:125px;
	margin: 0 10px;
	background-color: rgb(255, 124, 152);
	color:white;
	font-size:17px;
	font-weight:bold;
	border:1px solid white;
	border-radius:50%;
}

div.show_benefit{
	clear:left;
	diplay:inline-block;
}

/*login_option*/

div.login_div div.login_option ul{
	list-style-type:none;
}

div.login_div div.login_option div{
	margin-left:-40px;
}

div.login_div div.login_option a:first-child>li{
	margin-left:-18px;
}
div.login_div div.login_option a:last-child>li{
	border:none;
}
div.login_div div.login_option li{
	border-right:1px solid gray;
	display:inline-block;
	font-size:12px;
	color:#333;
	width:100px;
	text-align:center;
}
div.login_div div.login_option li a{
	text-decoration : none;
}

/*우측 안내문*/
div.info_div{
	float:left;
	margin:50px 0 50px 40px;
	width:450px;
}

div.info_div div span:first-child, div.info_div span:first-child{
	font-size:16px;
	display:block;
	font-weight:bold;
}

.info_content{
	font-size:13px;
	color: rgb(148, 135, 128);
}

.info_content2{
	font-size:13px;
	font-weight:bold;
	color: #333;
}

div.info_div div:nth-child(2){
	margin-top: 50px;
}
div.info_div div:nth-child(2) span.info_content{
	display:inline-block;
	width:20%;
}


/*중간 안내문*/
div.middle_info{
	clear:left;
	text-align:center;
	border-top:3px solid rgb(239, 239, 239);
	padding:23px;
	font-size:16px;
	color: rgb(148, 135, 128);
}

/*맨 맽 혜택 안내문*/
div.show_benefit{
	/*border:1px solid red;*/
	height:250px;

}

div.d1, div.d2, div.d3{
	/*border:1px solid blue;*/
	width:30%;
	float:left;
	margin: 0 15px;
}

div.d1 span:first-child, div.d2 span:first-child, div.d3 span:first-child{
	font-size:16px;
	display:block;
	font-weight:bold;
}

div.d1 span:nth-child(2), div.d2 span:nth-child(2), div.d3 span:nth-child(2){
	font-size:11px;
	color: rgb(148, 135, 128);
}

div.d1 div:nth-child(2), div.d2 div:nth-child(2), div.d3 div:nth-child(2){
	display:inline-block;
	width:50%;
	margin:25px 0  0 5px;
}

div.d3 div:nth-child(2){
	width:55%;
}

div.d1 div:first-child, div.d2 div:first-child, div.d3 div:first-child{
	display:inline-block;
	float: left;
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include> 
	
	<!-- content -->
	<div class = "content">
		<section class = "login">
			<div class = "title">
				<img src = "http://localhost:9000/br31/images/h_login.png">
				<span>배스킨 라빈스 홈페이지에 오신 것을 환영합니다.</span>
			</div>
			
			<div class = "login_div">
				<span>배스킨라빈스 로그인 </span>
				<span>해피포인트 아이디로 간편하게 로그인 하세요.</span>
				
				<!-- 로그인 -->	
				<form name = "login_form" action = "#" method = "get" class = "login_form"> 
					<fieldset>
						<ul>
							<div>
								<input type = "login"  id = "id" name = "id" placeholder = "아이디를 입력하세요" >
								<input type = "password" id = "pass" name = "pass" placeholder = "비밀번호를 입력하세요">
							</div>
							<div>
								<button type = "button">로그인</button>
							</div>
						</ul>
					</fieldset>
				</form>
				<div class = "login_option">	
					<ul>
						<div>
							<a href = "login_search.jsp"><li>아이디 찾기</li></a> 
							<a href = "login_search.jsp"><li>비밀번호 재발급</li></a> 
							<a href = "../join/join.jsp"><li>해피포인트 가입</li></a> 
						</div>	
					</ul>
				</div>
			</div>
			
			<div class = "info_div">
				<div>
				<span>SPC 통합회원 서비스</span>
					<p class = "info_content">
						하나의 ID/Password로 SPC가 운영하는 사이트(배스킨라빈스, 던킨도너츠,<br> 
						해피포인트카드, 파리바게뜨, 파리크라상, 파스쿠찌, SPC그룹,우리밀愛)를 한번에!!<br>
						간단한 동의 절차만 거치면 하나의 ID/Password로 제휴사이트를<br>
						로그인 하실 수 있습니다. <br>
					</p>
				</div>
				<div>
					<span>고객센터</span>
					<span class = "info_content">운영시간</span>
					<span class = "info_content2">월~금 09:00~17:30 토/일요일 휴무</span><br>
					
					<span class = "info_content">Tel.</span>
					<span class = "info_content2">080-555-3131(수신자부담)</span>
				</div>
			</div>
			
			<div class = "middle_info">
				<p>해피포인트 회원이 아니시라면 지금 해피포인트에 가입하시고 <br>
				다양한 혜택을 경험하세요.</p>
			</div>
			
			<div class = "show_benefit"">
				<div class = "d1">
					<div>
					<img src = "http://localhost:9000/br31/images/login_benefit.PNG">
					</div>
					<div>
						<span>혜택 하나</span>
						<span>배스킨라빈스 온라인 이벤트<br>
						행사에 참여할 수 있습니다.</span>
					</div>
				</div>
				<div class = "d2">
					<div>
					<img src = "http://localhost:9000/br31/images/login_benefit2.PNG">
					</div>
					<div>
						<span>혜택 둘</span>
						<span>월별 신제품을 보다<br>
						먼저 만날 수 있습니다.</span>
					</div>
				</div>
				<div class = "d3">
					<div>
					<img src = "http://localhost:9000/br31/images/login_benefit3.PNG">
					</div>
					<div>
						<span>혜택 셋</span>
						<span>배스킨라빈스 이벤트 정보<br>
						메일링을 받아 볼 수 있습니다.</span>
					</div>
				</div>
			</div>
			
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>