<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myweb2/js/jquery-3.6.0.min.js"></script>
<script>
	//클릭하면 별모양 버튼 색이 바뀌도록 구현


</script>




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

div.content section.m_page{
	width:90%;
	margin:auto;
}

div.content section.m_page div.m_f_image{
	text-align:center;
	margin:150px 0 70px 0;
}

section.m_page span{
	margin-left:5px;
	font-weight:600;
}


/********
	추천 플레이버
********/
div.r_flavor ul{
	list-style-type : none;
	padding:0;
	width:100%;
	height:210px;
	text-align:center;
}
div.r_flavor ul a{
	text-decoration : none;
}
div.r_flavor ul li{
	border:1px solid lightgray;
	display:inline-block;
	width:180px;
	margin:0;
	float:left;
}

div.r_flavor ul li span{
	display:block;
	font-size:11px;
	padding:20px 25px 45px 25px;
	color :rgb(148, 135, 128);
	margin:auto;
}
div.r_flavor ul li a img{
	width:100px;
	height:100px;
	text-align:center;
	
	background-image: url("http://localhost:9000/br31/images/icream_con.PNG");
	background-repeat: no-repeat;
	background-position: bottom;
	
	margin-left:35px;
}

.btn_favor{
	border:1px solid rgb(148, 135, 128);
	border-radius:50%;
	width:35px;
	height:35px;
	background-image : url("http://localhost:9000/br31/images/star_button.PNG");
	background-position : center;
	
	display:inline-block;
	font-size:25px;
	
	text-align:center;
	margin:0;
	
}

.btn_favor_click{
	border:1px solid rgb(148, 135, 128);
	border-radius:50%;
	width:35px;
	height:35px;
	background-image : url("http://localhost:9000/br31/images/star_button_onclick.PNG");
	background-position : center;
	
	display:inline-block;
	font-size:25px;
	
	text-align:center;
	margin:0;
	
}


/***
	내가 좋아하는 플레이버
****/

section.m_page{
	clear:left;
}

span.m_title{
	color: black;
	font-size:15px;
	display:block;
}

div.r_flavor{
	margin-bottom:150px;

}

</style>
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
					<a href = "mypage_f_flavor.jsp"><img src = "http://localhost:9000/br31/images/3st_mypage_onclick.PNG"></a>
					<a href = "mypage_update.jsp"><img src = "http://localhost:9000/br31/images/4st_mypage.PNG"
					onmouseover="this.src='http://localhost:9000/br31/images/4st_mypage_onclick.PNG'" 
					onmouseout="this.src='http://localhost:9000/br31/images/4st_mypage.PNG'"></a>
					<a href = "mypage_unregister.jsp"><img src = "http://localhost:9000/br31/images/5st_mypage.PNG"
					onmouseover="this.src='http://localhost:9000/br31/images/5st_mypage_onclick.PNG'" 
					onmouseout="this.src='http://localhost:9000/br31/images/5st_mypage.PNG'"></a>
				</ul>
			</nav>
		</section>
		<section class = "m_page">
			<div>
				<span class = "m_title">추천플레이버</span>
				<div class = "r_flavor">
					<ul>
						<li>
							
							<a href = "#">
								<span>베리베리 스트로베리</span>
								<img src = "http://localhost:9000/br31/images/r-flavor4.png">
							</a>
							<button type = "button" class = "btn_favor"></button>
						</li>
						<li>
							<a href = "#">
								<span>뉴욕 치즈케이크</span>
								<img src = "http://localhost:9000/br31/images/r-flavor2.png">
							</a>
							<button type = "button" class = "btn_favor"></button>
						</li>
						<li>
							<a href = "#">
								<span>바람과 함께 사라지다</span>
								<img src = "http://localhost:9000/br31/images/r-flavor3.png">
							</a>
							<button type = "button" class = "btn_favor"></button>
						</li>
						<li>
							<a href = "#">
								<span>민트 초콜릿 칩</span>
								<img src = "http://localhost:9000/br31/images/r-flavor.png">
							</a>
							<button type = "button" class = "btn_favor"></button>
						</li>
					</ul>	
				</div>
			</div>
		</section>
		<section class = "m_page">
			<span class = "m_title">내가 좋아하는 플레이버</span>
				<div class = "r_flavor">
					<ul>
						<li>
							<span>사랑에 빠진 딸기</span>
							<a href = "#"><img src = "http://localhost:9000/br31/images/my_f_flavor.png"></a>
							<button type = "button" class = "btn_favor_click"></button>
						</li>	
					</ul>	
				</div>
		</section>
		<section class = "m_page">	
			<div class = "m_f_image">	
				<a href = "#"><img src = "http://localhost:9000/br31/images/btn_favor.jpg"></a>
			</div>	
		</section>
	</div>
	<!-- content -->
	
	<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>