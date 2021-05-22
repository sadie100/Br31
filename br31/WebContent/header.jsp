<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
}

header .menu>ul {
	margin: 0;
	/* height: 310px; */
	overflow: hidden;
}

header .menu>ul>li {
	/* border: 1px solid blue; */
	width: 180px;
	float: left;
	text-align: center;
	background-color: white;
}

header .menu>ul>li:nth-child(1) {
	width: 200px;
}

header .menu>ul>li:nth-child(1) a {
	display: inline-block;
	width: 40%;
}

header .menu>ul>li ul {
	padding-top: 10px;
	min-width: 170px;
	display: block;
}

header .menu>ul>li ul li {
	display: block;
}

header .menu>ul>li:nth-child(2) {
	width: 200px;
	text-align:	center;
}

header .menu>ul>li:nth-child(2)>ul li img {
	margin-top: -10px;
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

header .menu a:hover {
	color: pink;
}

header .menu>ul>li>a:hover {
	color: rgb(255,124,151);
}

header .submenu {
	display: none;
}

header .menu>ul:hover .submenu {
	display: block;
	margin: 0;
	height: 310px;
	background-color: white;
}
</style>
</head>
<body>
	<header>
		<div class="main_bar">
			<div>
				<nav class="sns">
					<ul>
						<li><a href="#"><img src="http://localhost:9000/br31/images/sns_youtube.png"></a></li>
						<li><a href="#"><img src="http://localhost:9000/br31/images/sns_instagram.png"></a></li>
						<li><a href="#"><img src="http://localhost:9000/br31/images/sns_blog.png"></a></li>
						<li><a href="#"><img src="http://localhost:9000/br31/images/sns_twitter.png"></a></li>
						<li><a href="#"><img src="http://localhost:9000/br31/images/sns_facebook.png"></a></li>
					</ul>
				</nav>
			</div>
			<div>
				<a href="#"><img src="http://localhost:9000/br31/images/br_logo.png"></a>
			</div>
			<div>
				<a href="#">고객센터</a>
			</div>
		</div>

		<!-- 메뉴바 -->
		<div class="menu_bar">
			<nav class="menu">
				<ul>
					<li><a href="#">login</a> <a href="#">join</a>
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
					<li><a href="http://localhost:9000/br31/menu/menu_default.jsp">MENU</a>
						<div class="submenu">
							<ul>
								<li><a href="http://localhost:9000/br31/menu/menu_icecream_1.jsp">아이스크림</a></li>
								<li><a href="http://localhost:9000/br31/menu/menu_coffee.jsp">커피</a></li>
							</ul>
						</div>
					</li>
					<li><a href="http://localhost:9000/br31/nutrient/nutrient_default.jsp">영양성분 및 알레르기</a>
						<div class="submenu">
							<ul>
								<li><a href="#">아이스크림</a></li>
								<li><a href="#">커피</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">EVENT</a>
						<div class="submenu">
							<ul>
								<li><a href="#">진행이벤트</a></li>
								<li><a href="#">당첨자발표</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">STORE</a>
						<div class="submenu">
							<ul>
								<li><a href="#">매장정보</a></li>
								<li><a href="#">고객센터</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">ABOUT</a>
						<div class="submenu">
							<ul>
								<li><a href="#">공지사항</a></li>
								<li><a href="#">채용정보</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</nav>
		</div>
	</header>


</body>
</html>





