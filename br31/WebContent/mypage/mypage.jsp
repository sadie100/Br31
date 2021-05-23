<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배스킨라빈스</title>
<style>
div.content{
	font-family:"맑은고딕";
	width:1000px;
	margin:auto;
	margin-top:150px; 
}
div.content section.m_menu, div.content section.m_page legend{
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

div.content section.m_page fieldset{
	border: 1px solid rgb(198, 191, 179);
	border-radius : 10px;
}

div.card_div{
	width:100%;
	margin:auto;
}

div.content section.m_page div.card_section fieldset{
	/*border: 3px solid rgb(198, 191, 179);
	border-style: dashed;
	border-radius:10px;*/
	border:1px solid white;
	display : inline-block;
	width:210px;
	height: 170px;
	margin: 0 0 0 160px;
	background-image : url("http://localhost:9000/br31/images/card_set_image.PNG");
	clear:left;
	
}

div.card_section{
	padding: 10px  0 40px 0;
	border-bottom: 1px solid rgb(198, 191, 179);
	clear:left;
}

div.card_section fieldset>img{
	margin: 25px 25px 0 25px;
	display:block;
	width:145px;
}

div.card_section fieldset span{
	color:#333;
	display: inline-block;
	width:100px;
	font-size:13px;
	font-weight:bold;
	margin-left:35px;
}

/*안녕하세요 홍길동님*/
div.hello span{
	display:inline-block;
	font-size:30px;
	color: rgb(206, 198, 185);
	margin: 70px 0;
}
div.hello span:first-child{
	margin-left:20px;
}
div.hello span:nth-child(2){
	color: #333;
}

/*div.card_section>span:last-child {
	color: rgb(47, 35, 28);
	clear:left;
	
}*/

div.card_section div:first-child{
	float:left;
}

/*해피포인트 보여주는 div*/

div.point_section{
	width:50%;
	float:left;
	padding-top:30px;
	padding-left:30px;
	padding-bottom:35px;
}

div.point_section div:first-child{
	display:inline-block;
	/*border:1px solid red;*/
	float:left;
}
div.point_section div:nth-child(2){
	font-weight:bold;
	font-size:15px;
	display:inline-block;
	width:70%;
	margin-top:25px;
	margin-left:5px;
}

div.point_section div:nth-child(3){
	color: rgb(148, 135, 128);
	font-size:12px;
	display:block;
	width: 450px;
	clear:left;
	margin: 10px;
}


/*포인트 보여주는 부분*/
div.point_show{
/*border: 1px solid red;*/
	width:350px;
	float:right;
	text-align:right;
	padding-top:30px;
	padding-left:10px;
	margin-top:10px;
}

div.point_show div:first-child{
	/*border: 1px solid blue;*/
	font-size:20px;
	color : rgb(148, 135, 128);
	float:left;
	width:70%;
	text-align:center;
	margin-top:10px;
}


div.point_show div:first-child span{
	/*border:1px solid red;*/
	display:inline-block;

}
div.point_show div:first-child span:first-child{
	width:175px;
	height:30px;
	margin-right:15px;
}

div.point_show div:nth-child(2) span{
/*border:1px solid black;*/
	font-size:40px;
	color : rgb(255, 132, 0);
	font-weight: 700px;
	margin-top:-20px;
	float:left;
	margin-top:-3px;
	margin-left:20px;
}

div.point_show div:nth-child(3){
	/*border:1px solid orange;*/
	display:inline-block;
}

/*point 버튼*/
.btn_pcheck, .btn_pconfrim{
	border: 1px solid rgb(255, 124, 152);/*배라 pink*/
	border-radius:4px;
	background-color:white;
	color: rgb(255, 124, 152);
	font-size:11px;
	padding: 5px 15px;
	margin: 10px 3px;
}

.btn_pconfrim{
	color: #333;
	border: 1px solid rgb(224, 214, 209);
	
}

/*포인트로 구매가능한 제품*/
.point_product{
	margin:100px 0 150px 0;
}

div.point_product span:first-child{
	display:block;
	font-weight:600;
}
div.point_product span:nth-child(2){
	font-size:11px;
	color: rgb(148, 135, 128);

}

/*이벤트 프로모션*/
div.promotion span:first-child{
	color: rgb(47, 35, 28);
	padding:10px 0;
}

div.promotion div:nth-child(4) a:first-child span{
	padding-top:10px;
	width:40%;
}

div.promotion div:nth-child(4) a{
	text-decoration:none;
}

div.promotion div:nth-child(4) a:last-child span{
	color:rgb(148, 135, 161);
	font-size:13px;
	width:40%;
}

/*글씨 높이 가운데 정렬*/
/*a 태그안에 span 태그 바꾸는 방법 찾기*/
/*이미지 왼쪽에 붙이기*/
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class = "content">
		<section class = "m_menu">
			<nav>
			<img src = "http://localhost:9000/br31/images/mybr.PNG">
			<h4>회원님을 위한 배스킨라빈스의 다양한 정보</h4>
				<ul>
					<a href = "mypage.jsp"><img src = "http://localhost:9000/br31/images/1st_mypage_onclick.PNG"></a>
					<a href = "mypage_f_shop.jsp"><img src = "http://localhost:9000/br31/images/2st_mypage.PNG"
					onmouseover="this.src='http://localhost:9000/br31/images/2st_mypage_onclick.PNG'" 
					onmouseout="this.src='http://localhost:9000/br31/images/2st_mypage.PNG'"></a>
					<a href = "mypage_f_flavor.jsp"><img src = "http://localhost:9000/br31/images/3st_mypage.PNG"
					onmouseover="this.src='http://localhost:9000/br31/images/3st_mypage_onclick.PNG'" 
					onmouseout="this.src='http://localhost:9000/br31/images/3st_mypage.PNG'"></a>
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
			<fieldset>
				<legend><img src = "http://localhost:9000/br31/images/myhappypoint.PNG"></legend>
				<div class = "card_div">	
					<div class = "card_section">
						<div>
						<fieldset>
							<img src = "http://localhost:9000/br31/images/card_img.PNG">
							<span>1212121212121212</span>
						</fieldset>
						</div>
						<div class = "hello">
							<span>안녕하세요</span>
							<span>홍길동님!</span>
						</div>
					</div>
				</div>	
				
				<div class = "point_section">
					<div>
						<img src = "http://localhost:9000/br31/images/happypoint_img.PNG">
					</div>
					<div>
						<span>해피포인트는 어떻게 발급 받나요?</span>
					</div>
					<div>
						<span>
						파리크라상,파리바게뜨, 배스킨라빈스, 던킨도너츠, 파스쿠찌, 빚은등<br>
						전국 6천여개의 해피포인트 가맹점에서 1,000원 이상 구매 후<br>
						요청 시 즉시 발급해 드립니다.
						</span>
					</div>
					<div>
						<button type = "button" class = "btn_pcheck">해피포인트 카드 등록</button>
						<button type = "button" class = "btn_pconfrim">해피포인트 상세내역 확인</button>
					</div>
				</div>	
				<div class = "point_show">
					<div>
						<span>사용가능 총 포인트</span>
					</div>
					<div>
						<span>0</span>
					</div>	
					<div>	
						<img src = "http://localhost:9000/br31/images/point_logo.PNG">
					</div>
				</div>
				
			</fieldset>
		</section>
		<section class = "m_page">
			<div class = "point_product">
				<span>해피포인트로 선물(구매) 가능한 제품</span>
				<span>*해피마켓에서 해피포인트로 배스킨라빈스 모바일 교환권을 선물하세요!</span>
			</div>
		</section>
		<section class = "m_page">
			<div class = "point_product">
				<div class = "promotion">
					<span>해피포인트 프로모션</span>
					<div>
						<a href = "#"><img src = "http://localhost:9000/br31/images/promotion_mypage.PNG"></a>
					</div>
					<div>	
						<a href = "#"><img src = "http://localhost:9000/br31/images/happypoint_img_mypage.PNG"></a>
					</div>
					<div>	
						<a href = "#"><span>메가 해피 데이즈! 케이크 최대 7,000원 OFF!</span></a>
						<a href = "#"><span>2021.05.14~2021.06.13</span></a>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
	
</body>
</html>