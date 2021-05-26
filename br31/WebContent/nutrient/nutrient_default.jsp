<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/nutrient/nutrient.css">
<style>
div.pagination a:nth-child(2){
	background-color: rgb(245,111,152);
	color: white;
}
</style>
</head>
<body>

<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include>

<!-- content -->
<div class="content">
	<section class="page">
	<section class="text_info">
	<div class="title">
		<div class="title_left"></div>
			<img src="http://localhost:9000/br31/nutrient/images/h_title_nutrition.png">
		<div class="title_right"></div>
	</div>
	<label>배스킨라빈스 제품의 영양정보를 확인해보세요</label>
	</section>
	<section class="search_form">
	<form name="nutrient_search" action="#" method="get" class="nutrient_search">
		<ul>
			<li>
				<label class="title">제품명</label>
				<input type="text" name = "p_name" class="p_name">
			</li>
			<li>
				<label class="title">영양성분</label>
				<select>
					<option value="전체">전체</option>
					<option value="열량">열량</option>
					<option value="나트륨">나트륨</option>
					<option value="당류">당류</option>
					<option value="포화지방">포화지방</option>
					<option value="단백질">단백질</option>
					<option value="카페인">카페인</option>
				</select>
				<select>
					<option value="전체">전체</option>
					<option value="높은순">높은순</option>
					<option value="낮은순">낮은순</option>
				</select>
			</li>
			<li>
				<label class="title">알레르기</label>
				<input type="checkbox" id="allergy1" name="allergy1" value="계란">
				<label for="allergy1">계란</label>&nbsp;
				<input type="checkbox" id="allergy2" name="allergy2" value="대두">
				<label for="allergy2">대두</label>&nbsp;
				<input type="checkbox" id="allergy3" name="allergy3" value="돼지고기">
				<label for="allergy3">돼지고기</label>&nbsp;
				<input type="checkbox" id="allergy4" name="allergy4" value="땅콩">
				<label for="allergy4">땅콩</label>&nbsp;
				<input type="checkbox" id="allergy5" name="allergy5" value="밀">
				<label for="allergy5">밀</label>&nbsp;
				<input type="checkbox" id="allergy6" name="allergy6" value="복숭아">
				<label for="allergy6">복숭아</label>&nbsp;
				<input type="checkbox" id="allergy7" name="allergy7" value="우유">
				<label for="allergy7">우유</label>&nbsp;
				<input type="checkbox" id="allergy8" name="allergy8" value="호두">
				<label for="allergy8">호두</label>&nbsp;
				<input type="checkbox" id="allergy9" name="allergy9" value="쇠고기">
				<label for="allergy9">쇠고기</label>&nbsp;
				<input type="checkbox" id="allergy10" name="allergy10" value="오징어">
				<label for="allergy10">오징어</label><br>
				<input type="checkbox" id="allergy11" name="allergy11" value="없음">
				<label for="allergy11">없음</label>&nbsp;
			</li>
			<li>
				<span class="notice_labels">
				<label class="notice">※ 모든 제품은 밀, 대두, 호두, 우유, 땅콩, 돼지고기, 복숭아, 계란, 쇠고기를 사용한 제품과 같은 제조 시설에서 제조되었습니다.</label>
				<label class="notice">※ 어린이, 임산부 및 카페인에 민감한 사람은 섭취에 주의해 주시기 바랍니다. (고카페인 함유)</label>
				<label class="notice">※ 카페인 함량 "-"은 해당없음을 의미합니다.</label>
				</span>
			</li>
			<li>
				<button type="button" class="btn_search">검색</button>
			</li>
		</ul>
	</form>
	</section>
	<section class="search_result">
		<img src="http://localhost:9000/br31/nutrient/images/h_nutrition_result.png" class="title">
		<label class="search_result">검색결과 총 n건 검색되었습니다.</label>
		<table class="search_result">
			<tr>
				<th>제품명</th>
				<th>1회 제공량(g)</th>
				<th>열량(kcal)</th>
				<th>나트륨(mg)</th>
				<th>당류(g)</th>
				<th>포화지방(g)</th>
				<th>단백질(g)</th>
				<th>카페인(mg)</th>
				<th>알레르기 성분</th>
			</tr>
			<tr>
				<td>예시</td>
				<td>예시</td>
				<td>예시</td>
				<td>예시</td>
				<td>예시</td>
				<td>예시</td>
				<td>예시</td>
				<td>예시</td>
				<td>예시</td>
			</tr>			
		</table>
	</section>
	<section class="pagination">
	<div class="pagination">
			<a href="#">&lt;</a>
			<a href="#">1</a>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#">&gt;</a>
	</div>
	</section>
	</section>
</div>

<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>

</body>
</html>