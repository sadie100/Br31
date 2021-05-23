<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	margin-left:10px;
	font-weight:600;
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
			<span>내가 좋아하는 플레이버</span>
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