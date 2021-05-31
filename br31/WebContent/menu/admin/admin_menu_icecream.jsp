<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/admin_menu.css">
</head>
<script src="http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script>

/******
	팝업창 띄우기
*****/

function updatePop(){
	window.open("admin_menu_update.jsp","","width = 800, height = 850, top = 50, left = 800");
}
function writePop(){
	window.open("admin_menu_write.jsp","","width = 800, height = 850, top = 50, left = 800");
}
/*
function nutrientPop(){
	window.open("admin_menu_nutrient.jsp","","width = 1000, height = 500, top = 200, left = 50");
}
*/

$(document).ready(function(){
	$("#nutrients").click(function(){
		$("#modal").show();
		$("#overlay").css({"pointer-events":"auto"});
	});
	$("#exit").click(function(){
		$("#modal").hide();
		$("#overlay").css({"pointer-events":"none"});
	});
	$("#overlay").click(function(){
		$("#modal").hide();
		$("#overlay").css({"pointer-events":"none"});
	});
	
});
</script>
<body>

<!-- header -->
	<jsp:include page = "../../admin_header.jsp"></jsp:include>

<!-- content -->
<section class="page">
<div class="content">
<h3 class="title">메뉴 관리</h3>
<form name="menu_view" action="#" method="get" class="menu_form">
	<div class="category">
		<ul class="category">
			<li class="selected"><a href="admin_menu_icecream.jsp">아이스크림</a></li>
			<li><a href="admin_menu_coffee.jsp">커피</a></li>
		</ul>
	</div>
	<div class="buttons">
		<ul class="buttons">
			<li><button class="update" onclick = "updatePop()">수정</button></li>
			<li><button class="update">삭제</button></li>
			<li><button class="update" onclick = "writePop()">등록</button></li>
		</ul>
	</div>
<div class="table">
	<ul>
		<li>
			<table class="menu_ice">
				<tr>
					<th>선택</th>
					<th>메뉴 이름</th>
					<th>메뉴 설명</th>
					<th>추천 플레이버</th>
					<th>해쉬태그</th>
					<th>메뉴 사진</th>
					<th>영양정보</th>
				</tr>
				<tr>
					<td><input type="checkbox" id="icecream1" name="엄마는 외계인" value="엄마는 외계인"></td>
					<td>엄마는 외계인</td>
					<td>밀크 초콜릿, 다크 초콜릿, 화이트 무스 세 가지 아이스크림에 달콤 바삭한 초코볼이 더해진 아이스크림</td>
					<td>
						<ul>
							<li>자모카 아몬드 훠지</li>
							<li>베리베리 스트로베리</li>
							<li>이상한 나라의 솜사탕</li>
							<li>바람과 함께 사라지다</li>
						</ul>
					</td>
					<td>
						<ul>
							<li>#초콜릿</li>
							<li>#초코볼</li>
							<li>#엄마는 외계인</li>
						</ul>
					</td>
					<td><img class="p_image" src="http://localhost:9000/br31/menu/images/ice_mother.png"></td>
					<td><button class="nutrients_more" id="nutrients">보기</button></td>
				</tr>
			</table>
		</li>
	</ul>
</div>
</form>
<div class="modal" id="modal">
	<button class="exit" id="exit">&times;</button>
<table class="nutrient_info">
			<tr>
				<th>제품명</th>
				<td>엄마는 외계인</td>
			</tr>
			<tr>
				<th>1회 제공량(g)</th>
				<td>115</td>
			</tr>
			<tr>
				<th>열량(kcal)</th>
				<td>296</td>
			</tr>
			<tr>				
				<th>나트륨(mg)</th>
				<td>114</td>
			</tr>
			<tr>
				<th>당류(g)</th>
				<td>23</td>
			</tr>
			<tr>
				<th>포화지방(g)</th>
				<td>11</td>
			</tr>
			<tr>
				<th>단백질(g)</th>
				<td>5</td>
			</tr>
			<tr>
				<th>카페인(mg)</th>
				<td>0</td>
			</tr>
			<tr>
				<th>알레르기 성분</th>
				<td>대두, 밀, 우유</td>
			</tr>			
	</table>
</div>
	<div class="overlay" id="overlay"></div>
</div>
</section>
<!-- footer -->
	<jsp:include page = "../../footer.jsp"></jsp:include>
</body>
</html>