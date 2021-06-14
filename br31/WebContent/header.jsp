<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.vo.SessionVO" %>    
<%
	String id = "";
	id = request.getParameter("id");
	String not_login = ""; 
	
	SessionVO svo = (SessionVO)session.getAttribute("svo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
header ul {
	list-style-type: none;
	padding: 0;
	display: inline-block;
}
header {
	background-image: url("http://localhost:9000/br31/images/bg_header.png");
}
header>div {
	width: 1400px;
	height: 40px;
	margin: auto;
}
header .main_bar {
	height: 150px;
	text-align: center;
}
header .main_bar div {
	height: 150px;
	line-height: 150px;
	display: inline-block;
}
header li {
	display: inline-block;
}
header .main_bar li img {
	width: 35px;
	height: 35px;
}
header .main_bar div:nth-child(2) img {
	width: 100px;
	height: 100px;
	padding: 25px;
}
header .main_bar a {
	text-decoration: none;
	font-size: 13px;
	color: black;
}
header .main_bar div, .main_bar img {
	display: inline-block;
}
header .main_bar div:first-child {
	float: left;
	padding-left: 100px;
}
header .main_bar div:last-child {
	float: right;
	padding: 0 150px 0 80px;
}
/****** 메뉴바 *******/
header .menu_bar {
	clear: right;
	text-align: center;
	width: 100%;
	border-bottom: 1px solid darkgray;
}
header .menu>ul {
	margin: auto;
	width: 1400px;
	text-align: center;
}
header .menu>ul>li {
	width: 180px;
	/* float: left; */
	text-align: center;
	background-color: white;
}
header .menu>ul>li:nth-child(1), header .menu>ul>li:nth-child(1) ul {
	width: 200px;
}
header .menu>ul>li:nth-child(1) a {
	display: inline-block;
	width: 40%;
}
header .submenu ul {
	padding-top: 10px;
	min-width: 180px;
	display: block;
}
header .submenu li {
	display: block;
}
header .menu>ul>li:nth-child(1) a{
	font-size: 12px;
}
header .menu>ul>li:nth-child(1) a:first-child{
	color: #ff7c97;
}
header .menu>ul>li:nth-child(1) a:nth-child(2){
	color: gray;
}
header .menu>ul>li:nth-child(2) {
	width: 200px;
	text-align:	center;
}
header .menu>ul>li:nth-child(2) ul li img {
	margin-top: -15px;
}
header .menu>ul>li ul li a {
	display: inline-block;
	margin: 10px 0;
}
header .menu>ul>li>a {
	display: inline-block;
	padding: 10px 0;
	width: 100%;
	font-size: 14px;
	font-weight: bold;
	font-family: 맑은고딕;
}
header .menu a {
	text-decoration: none;
	color: black;
	font-size: 14px;
}
header .submenu a:hover {
	color: #ff7c97;
}
header .submenu {
	display: none;
	height: 270px;
	margin: 0;
 	position: absolute;
	background-color: white;
}
header .menu_bg {
	display: none;
	width: 100%;
	height: 280px;
	margin: -10px;
	left: 5px;
	position: absolute;
	background-color: white;
	border-bottom: 1px solid darkgray;
}
header .menu:hover div.menu_bg {
	display: block;
	z-index: 90;
	overflow: hidden;
}
header .menu:hover .submenu {
	display: block;
	z-index: 100;
}
</style>
</head>
<body>
	<header>
		<div class="main_bar">
			<div>
				<nav class="sns">
					<ul>
						<li><a href="https://www.youtube.com/user/baskinrobbinskorea" target="_blank"><img src="http://localhost:9000/br31/images/sns_youtube.png"></a></li>
						<li><a href="https://www.instagram.com/baskinrobbinskorea/" target="_blank"><img src="http://localhost:9000/br31/images/sns_instagram.png"></a></li>
						<li><a href="https://blog.naver.com/brgirl31" target="_blank"><img src="http://localhost:9000/br31/images/sns_blog.png"></a></li>
						<li><a href="https://twitter.com/BaskinrobbinsKR" target="_blank"><img src="http://localhost:9000/br31/images/sns_twitter.png"></a></li>
						<li><a href="https://www.facebook.com/baskinrobbinskr/" target="_blank"><img src="http://localhost:9000/br31/images/sns_facebook.png"></a></li>
					</ul>
				</nav>
			</div>
			<div>
				<a href="http://localhost:9000/br31/index.jsp"><img src="http://localhost:9000/br31/images/br_logo.png"></a>
			</div>
			<div>
				<a href="http://localhost:9000/br31/faq/faq_1.jsp">고객센터</a>
			</div>
		</div>

		<!-- 메뉴바 -->
		<div class="menu_bar">
			<nav class="menu">
				<ul>
					<li>
						<% if(svo == null) { %>
						<a href="http://localhost:9000/br31/login/login.jsp">LOGIN</a>
						<a href="http://localhost:9000/br31/join/join.jsp">JOIN</a>
						<% }else{ %>
						<a href="http://localhost:9000/br31/login/logout.jsp">LOGOUT</a>
						<% if(svo.getId().equals("admin")){ %>
						<a href="http://localhost:9000/br31/mypage/mypage.jsp">ADMIN</a>
						<%}else{ %>
						<a href="http://localhost:9000/br31/mypage/mypage.jsp">MY PAGE</a>
						<%} %>
						<% } %>
						<div class="submenu">
							<ul>
								<li><img src="http://localhost:9000/br31/images/happypoint_app.jpg"></li>
							</ul>
						</div>
					</li>
					<li><a href="#">FLAVOR OF THE MONTH</a>
						<div class="submenu">
							<ul>
								<li><img src="http://localhost:9000/br31/images/monthly_menu.png"></li>
							</ul>
						</div>
					</li>
					<li>
					<a href="http://localhost:9000/br31/menu/menu_default.jsp">MENU</a>
						<div class="submenu">
							<ul>
								<li><a href="http://localhost:9000/br31/menu/menu_icecream_1.jsp">아이스크림</a></li>
								<li><a href="http://localhost:9000/br31/menu/menu_coffee.jsp">커피</a></li>
							</ul>
						</div>
					</li>
					<li>
					<a href="http://localhost:9000/br31/nutrient/nutrient_default.jsp">영양성분 및 알레르기</a>
						<div class="submenu">
							<ul>
								<li><a href="#">아이스크림</a></li>
								<li><a href="#">커피</a></li>
							</ul>
						</div>
					</li>
					<li>
					
					<a href="http://localhost:9000/br31/event/event_list.jsp">EVENT</a>
						<div class="submenu">
							<ul>
								<li><a href="http://localhost:9000/br31/event/event_list.jsp">진행이벤트</a></li>
								<li><a href="#">당첨자발표</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">STORE</a>
						<div class="submenu">
							<ul>
								<li><a href="http://localhost:9000/br31/map/map.jsp">매장정보</a></li>
								<li><a href="http://localhost:9000/br31/faq/faq_1.jsp">고객센터</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">ABOUT</a>
						<div class="submenu">
							<ul>
								<li><a href="http://localhost:9000/br31/notice/notice_list.jsp">공지사항</a></li>
								<li><a href="http://localhost:9000/br31/recruit/recruit.jsp">채용정보</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<div class="menu_bg"></div>
			</nav>
		</div>
	</header>


</body>
</html>