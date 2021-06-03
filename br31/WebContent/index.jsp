<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		var carouselIndex = 0;
		var carouselLength = $(".carousel_wrap li").length;
		
		setInterval(function() {
			if(carouselIndex < carouselLength-1) {
				$(".carousel_wrap").animate({left:"-=100%"}, 500);
				carouselIndex += 1;
			} else {
				$(".carousel_wrap").animate({left:"0"}, 500);
				carouselIndex = 0;
			}
		}, 4000);
		
 		
		$(".prev").click(function() {
				if(carouselIndex > 0) {
					$(".carousel_wrap").animate({left:"+=100%"}, 500);
					carouselIndex -= 1;
				} else {
					$(".carousel_wrap").animate({left:"-200%"}, 500);
					carouselIndex = carouselLength-1;
				}
		});
		
 
		$(".next").click(function() {
			if(carouselIndex < carouselLength-1) {
				$(".carousel_wrap").animate({left:"-=100%"}, 500);
				carouselIndex += 1;
			} else {
				$(".carousel_wrap").animate({left:"0"}, 500);
				carouselIndex = 0;
			}
		});
		
	});
</script>

<style>
section.main {
	text-align: center;
}
section.main_top {
	/* position: relative; */
}
section.main .banner a {
	margin-bottom: 0;
	height: 150px;
	display: block;
	background: #c3d600 url("http://localhost:9000/br31/images/main_banner.jpg") no-repeat center;
}
section.main .banner_slide {
	position: relative;
	width: 100%;
	overflow: hidden;
}
section.main .carousel_wrap {
	margin: 5px 0;
	height: 697px;
	width: 300%;
	overflow: hidden;
	position: relative;
} 
section.main .carousel_wrap li {
	width: 33.333%;
	display: inline-block;
	position: relative;
	float: left;
}
section.main .carousel_wrap li a {
	height: 697px;
	display: flex;
	position: relative;
}
section.main .carousel_1:before, section.main .carousel_1:after {
	content="";
	position: absolute;
	height: 597px;
	width: 100%;
	
} 
section.main .carousel_1 a {
	background: #c3d600 url("http://localhost:9000/br31/images/main_carousel_1.jpg") no-repeat center;
}
section.main .carousel_2 a {
	background: #76e1e7 url("http://localhost:9000/br31/images/main_carousel_2.jpg") no-repeat center;
}
section.main .carousel_3 a {
	background: #fc637f url("http://localhost:9000/br31/images/main_carousel_3.jpg") no-repeat center;
}
section.main .banner_btns a{
	display: block;
	position: absolute;
	top: 40%;
}
section.main .banner_btns .prev {
	left: 20px;
}
section.main .banner_btns .next {
	right: 20px;
}


/*************************************************/
section.main .br_event {
	width: 1400px;
	margin: auto;
	text-align: center;
	padding: 50px 0 0 30px;
}
section.main ul {
	list-style-type: none;
	padding: 0;
}
section.main .event_list ul li {
	margin: 5px;
	display: inline-block;
}
section.main .event_list img{
	display: block;
	margin-top: 15px;
}
section.main .event_list span {
	display: block;
	text-align: left;
	font-size: 14px;
	margin-top: 5px;
	letter-spacing: -1px;
}
section.main .event_list li span:nth-child(4) {
	font-size: 12px;
	color: darkgray;
	margin-top: 10px;
}
section.main .event_list a {
	text-decoration: none;
	color: black;
}

/***********************************/
section.main .br_menu {
	width: 100%;
	height: 700px;
	margin: 100px 0;
	text-align: center;
	display: inline-block;
	background: url("http://localhost:9000/br31/images/bg_menu.jpg") no-repeat center top;
}
section.main .br_menu div {
	width: 1400px;
	text-align: center;
	margin: auto;
	padding: 50px
}
/***********************************/


section.main .store_order, section.main .sns, section.main .instagram {
	width: 1400px;
	margin: auto;
	text-align: center;
}
section.main .store_order li {
	display: inline-block;
	text-align: center;
	margin: 50px 0 0 0;
}
section.main .store_order ul, section.main .sns ul {
	width: 1400px;
	margin: auto;
}
section.main .store_order li>a img{
	display: block;
	margin: 30px 0;
}
section.main .sns {
	margin: 50px auto;
	text-align: center;
}
section.main .sns li {
	display: inline-block;
	text-align: center;
	margin: 30px 5px;
}
section.main .instagram>div div {
	width: 270px;
	height: 270px;
	overflow: hidden;
	display: inline-block;
}
section.main .instagram>div img {
	width: 270px;
	height: 270px;
}
section.main .instagram {
	margin-bottom: 100px; 
}
section.main .instagram span {
	display: inline-block;
	margin-bottom: 30px;
}
section.main .instagram div img:hover {
	transform: scale(1.2);
	transition: transform 0.7s;
}


</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
		<section class="main">
			<div class="main_top">
				<div class="banner"><a href="#" class="banner"></a></div>
				<div class="banner_slide">
					<div class="carousel">
						<ul class="carousel_wrap">
							<!-- <li class="carousel_3"><a href="#"></a></li> -->
							<li class="carousel_1"><a href="#"></a></li>
							<li class="carousel_2"><a href="#"></a></li>
							<li class="carousel_3"><a href="#"></a></li>
							<!-- <li class="carousel_1"><a href="#"></a></li> -->
						</ul>
					</div>
					<div class="banner_btns">
						<a href="#" class="prev" onclick="return false"><img src="http://localhost:9000/br31/images/btn_banner_prev.png"></a>
						<a href="#" class="next" onclick="return false"><img src="http://localhost:9000/br31/images/btn_banner_next.png"></a>
					</div>
				</div>
			</div>
			<div class="br_event">
				<div>
					<img src="http://localhost:9000/br31/images/h_event.png">
				</div>
				<div class="event_list">
					<ul>
						<li>
							<a href="#">
								<img src="http://localhost:9000/br31/images/banner_delivery.png">
								<img src="http://localhost:9000/br31/images/stit_store.gif">
								<span>해피오더 딜리버리로 간편하게 주문하세요!</span>
								<span>상시진행</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://localhost:9000/br31/images/banner_delivery_bm.png">
								<img src="http://localhost:9000/br31/images/stit_store.gif">
								<span>배달의 민족에서 빠르게 주문하세요!</span>
								<span>상시진행</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://localhost:9000/br31/images/banner_delivery_ygy.png">
								<img src="http://localhost:9000/br31/images/stit_store.gif">
								<span>요기요에서 손쉽게 주문하세요!</span>
								<span>상시진행</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="http://localhost:9000/br31/images/banner_delivery_kakao.png">
								<img src="http://localhost:9000/br31/images/stit_store.gif">
								<span>카카오톡 주문하기에서 편리하게 주문하세요!</span>
								<span>상시진행</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="br_menu">
				<div>
					<img src="http://localhost:9000/br31/images/h_menu.png">
				</div>
				<div>
					<a href="http://localhost:9000/br31/menu/menu_icecream_1.jsp">
						<img src="http://localhost:9000/br31/images/img_icecream.png">
					</a>
					<a href="http://localhost:9000/br31/menu/menu_coffee.jsp">
						<img src="http://localhost:9000/br31/images/img_coffee.png">
					</a>
				</div>
			</div>
			<div class="store_order">
				<ul>
					<li>
						<div><img src="http://localhost:9000/br31/images/h_store.png"></div>
						<a href="#"><img src="http://localhost:9000/br31/images/img_store.jpg"></a>
					</li>
					<li>
						<div><img src="http://localhost:9000/br31/images/h_happyorder_delivery.png"></div>
						<a href="#"><img src="http://localhost:9000/br31/images/img_happyorder_delivery.png"></a>
					</li>
				</ul>
			</div>
			<div class="sns">
				<div><img src="http://localhost:9000/br31/images/h_sns.png"></div>
				<ul>
					<li><a href="#"><img src="http://localhost:9000/br31/images/sns_youtube.png"></a></li>
					<li><a href="#"><img src="http://localhost:9000/br31/images/sns_instagram.png"></a></li>
					<li><a href="#"><img src="http://localhost:9000/br31/images/sns_blog.png"></a></li>
					<li><a href="#"><img src="http://localhost:9000/br31/images/sns_twitter.png"></a></li>
					<li><a href="#"><img src="http://localhost:9000/br31/images/sns_facebook.png"></a></li>
				</ul>
			</div>
			<div class="instagram">
				<span>
					<img src="http://localhost:9000/br31/images/tit_sns.png">
				</span>
				<div>
					<div><img src="http://localhost:9000/br31/images/insta_1.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_2.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_3.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_4.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_5.jpg"></div>
				</div>
				<div>
					<div><img src="http://localhost:9000/br31/images/insta_6.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_7.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_8.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_9.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_10.jpg"></div>
				</div>
				<div>
					<div><img src="http://localhost:9000/br31/images/insta_11.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_12.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_13.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_14.jpg"></div>
					<div><img src="http://localhost:9000/br31/images/insta_15.jpg"></div>
				</div>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>