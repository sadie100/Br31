<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "http://localhost:9000/br31/choi.css">
<script src="http://localhost:9000/myweb2/js/jquery-3.6.0.min.js"></script>
<script>
	//클릭하면 별모양 버튼 색이 바뀌도록 구현
	$(document).ready(function(){
		
		$("button[name=btn_f]").click(function(){
			var btn_f = $(this).attr("id");
			
			if(btn_f == "btn_favor"){
				$(this).removeClass("btn_favor");
				$(this).addClass("btn_favor_click");
				$(this).attr("id","btn_favor_click");
			}else{
				$(this).removeClass("btn_favor_click");
				$(this).addClass("btn_favor");
				$(this).attr("id","btn_favor");
			}
		});
		
		
	});

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
		<section class = "m2_page">
			<div>
				<span class = "m2_title">추천플레이버</span>
				<div class = "r_flavor">
					<ul>
						<li>
							
							<a href = "#">
								<span>베리베리 스트로베리</span>
								<img src = "http://localhost:9000/br31/images/r-flavor4.png">
							</a>
							<button type = "button" class = "btn_favor" id = "btn_favor" name = "btn_f"></button>
						</li>
						<li>
							<a href = "#">
								<span>뉴욕 치즈케이크</span>
								<img src = "http://localhost:9000/br31/images/r-flavor2.png">
							</a>
							<button type = "button" class = "btn_favor" id = "btn_favor" name = "btn_f"></button>
						</li>
						<li>
							<a href = "#">
								<span>바람과 함께 사라지다</span>
								<img src = "http://localhost:9000/br31/images/r-flavor3.png">
							</a>
							<button type = "button" class = "btn_favor" id = "btn_favor" name = "btn_f"></button>
						</li>
						<li>
							<a href = "#">
								<span>민트 초콜릿 칩</span>
								<img src = "http://localhost:9000/br31/images/r-flavor.png">
							</a>
							<button type = "button" class = "btn_favor" id = "btn_favor" name = "btn_f"></button>
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
							<button type = "button" class = "btn_favor_click" id = "btn_favor_click" name = "btn_f"></button>
						</li>	
					</ul>	
				</div>
		</section>
		<section class = "m2_page">	
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