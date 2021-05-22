<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/menu_select.css">
</head>
<body>
<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include>

<!-- content -->
<div class="content">
<section class="page">
	<section class="top_info">
		<label class="eng_name">PUSS IN BOOTS</label>
		<h1 class="kor_name">엄마는 외계인</h1>
		<label class="p_explain">밀크 초콜릿, 다크 초콜릿, 화이트 무스 세 가지 아이스크림에 달콤 바삭한 초코볼이 더해진 아이스크림</label>
		<div class="bg">
			<div class="icecream_img">
				<img src="images/ice_mother.png">
			</div>
			<div class="icons">
				<a href="#">☆</a>
				<a href="#"><img src="images/icon_facebook.png"></a>
				<a href="#"><img src="images/icon_twitter.png"></a>
				<a href="#"><img src="images/icon_copy.png"></a>
			</div>
		</div>
	</section>
	<section class="size_info">
		<div class="depth1">
			<img class="title" src="images/h_conecup.gif">
			<div class="depth2">
				<img class="size" src="images/size_single_r.png">
				<div class="text">
					<label class="title">싱글레귤러</label>
					<label class="info">한가지 맛을 센스있게<br>
					즐길수 있는 사이즈<br>
					(용기무게 제외 중량 115g)</label>
					<label class="price">3,200원</label>
				</div>
			</div>
			<div class="depth2">
				<img class="size" src="images/size_single_k.png">
				<div class="text">
					<label class="title">싱글킹</label>
					<label class="info">좋아하는 맛 한가지만 듬뿍<br>
					맛볼 수 있는 사이즈 (중량 145g)</label>
					<label class="price">4,000원</label>
				</div>
			</div>
			<div class="depth2">
				<img class="size" src="images/size_double_j.png">
				<div class="text">
					<label class="title">더블주니어</label>
					<label class="info">두가지 맛을 조금씩 한번에<br>
					즐기는 사이즈 (중량 150g)</label>
					<label class="price">4,300원</label>
				</div>
			</div>
			<div class="depth2">
				<img class="size" src="images/size_double_r.png">
				<div class="text">
					<label class="title">더블레귤러</label>
					<label class="info">아이스크림 매니아를 위한<br>
					진정한 더블 사이즈 (중량 230g)</label>
					<label class="price">6,200원</label>
				</div>
			</div>
		</div>
		
		<div class="depth1">
			<img class="title" src="images/h_handpack.gif">
			<div class="depth2">
				<img class="size" src="images/size_pint.png">
				<div class="text">
					<label class="title">파인트</label>
					<label class="info">3가지 맛을 골라먹는 재미가<br>
					있는 사이즈 (중량 320g)</label>
					<label class="price">8,200원</label>
				</div>
			</div>
			<div class="depth2">
				<img class="size" src="images/size_quarter.png">
				<div class="text">
					<label class="title">쿼터</label>
					<label class="info">4가지 맛을 골라먹는 재미가<br>
					있는 사이즈 (중량 620g)</label>
					<label class="price">15,500원</label>
				</div>
			</div>
			<div class="depth2">
				<img class="size" src="images/size_family.png">
				<div class="text">
					<label class="title">패밀리</label>
					<label class="info">5가지 맛을 나눠먹는 재미가<br>
					있는 사이즈 (중량 960g)</label>
					<label class="price">22,000원</label>
				</div>
			</div>
			<div class="depth2">
				<img class="size" src="images/size_halfgallon.png">
				<div class="text">
					<label class="title">하프갤런</label>
					<label class="info">6가지 맛을 나눠먹는 재미가<br>
					있는 사이즈 (중량 1200g)</label>
					<label class="price">26,500원</label>
				</div>
			</div>
		</div>
	</section>
	<section class="recommend_flavor">
		<h3 class="title">추천플레이버</h3>
		<table>
			<tr>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">자모카 아몬드 훠지</label>
								<img src="http://localhost:9000/br31/menu/images/ice_jamoca.png">
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">베리베리 스트로베리</label>
								<img src="http://localhost:9000/br31/menu/images/ice_berry2.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">이상한 나라의 솜사탕</label>
								<img src="http://localhost:9000/br31/menu/images/ice_strange.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">바람과 함께 사라지다</label>
								<img src="http://localhost:9000/br31/menu/images/ice_wind.png">					
							</span>
						</span>
					</a>
				</td>
			</tr>
		</table>
	</section>
	<section class="instagram">
		<h3 class="title">인스타그램에서 만나는</h3>
		<label class="hashtag">#엄마는외계인</label>
		<label class="hashtag">#배스킨라빈스</label>
		<div class="pictures">
			<img src="">
		</div>
	</section>
	<a href="http://localhost:9000/br31/menu/menu_icecream_1.jsp"><button>목록</button></a>
</section>
</div>

<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>