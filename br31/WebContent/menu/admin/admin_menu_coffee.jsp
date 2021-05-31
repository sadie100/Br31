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
			<li><a href="admin_menu_icecream.jsp">아이스크림</a></li>
			<li class="selected"><a href="admin_menu_coffee.jsp">커피</a></li>
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
			<table class="menu_coffee">
				<tr>
					<th>선택</th>
					<th>메뉴 이름</th>
					<th>메뉴 설명</th>
					<th>해쉬태그</th>
					<th>메뉴 사진</th>
					<th>영양정보</th>
				</tr>
				<tr>
					<td><input type="checkbox" id="coffee1" name="아메리카노" value="아메리카노"></td>
					<td>아메리카노</td>
					<td>카페브리즈 커피를 가장 부드럽게 즐길 수 있는 따뜻한 아메리카노</td>
					<td>
						<ul>
							<li>#아메리카노</li>
							<li>#카페브리즈</li>
						</ul>
					</td>
					<td><img class="p_image" src="http://localhost:9000/br31/menu/images/cf_americano.png"></td>
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
				<td>아메리카노</td>
			</tr>
			<tr>
				<th>1회 제공량(g)</th>
				<td>280</td>
			</tr>
			<tr>
				<th>열량(kcal)</th>
				<td>10</td>
			</tr>
			<tr>				
				<th>나트륨(mg)</th>
				<td>1</td>
			</tr>
			<tr>
				<th>당류(g)</th>
				<td>0</td>
			</tr>
			<tr>
				<th>포화지방(g)</th>
				<td>0</td>
			</tr>
			<tr>
				<th>단백질(g)</th>
				<td>0</td>
			</tr>
			<tr>
				<th>카페인(mg)</th>
				<td>144</td>
			</tr>
			<tr>
				<th>알레르기 성분</th>
				<td>없음</td>
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