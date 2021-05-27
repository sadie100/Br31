<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/menu_list.css">
</head>
<body>
	<div id="modal" class="modal">
	<button class="exit" id="exit">&times;</button>
	<form name="search_form" action = "#" method="get" class="search_form">
		<ul class="depth1">
			<li class="depth1">
				<label class="title">제품명</label>
				<input type="text" name="p_name" id="p_name">
			</li>
			<li class="depth1">
				<label class="title">해시태그</label>
				<input type="text" name="hashtag" id="hashtag">
				<ul class="depth2">
					<li class="depth2">자주 찾는 해시태그</li>
					<li class="depth2"><a href="">#아이스홈런볼</a></li>
				</ul>
			</li>
			<li class="depth1">
				<div class="title">
				<label class="title">알레르기 성분</label>
				</div>
				<div class="checkbox">
					<div class="checkbox_inside">
						<span class="check">
							<input type="checkbox" id="allergy1" name="allergy1" value="계란">
							<label for="allergy1">계란</label>&nbsp;
						</span>
						<span class="check">
							<input type="checkbox" id="allergy2" name="allergy2" value="대두">
							<label for="allergy2">대두</label>&nbsp;
						</span>
						<span class="check">
							<input type="checkbox" id="allergy3" name="allergy3" value="돼지고기">
							<label for="allergy3">돼지고기</label>&nbsp;
						</span>
						<span class="check">
							<input type="checkbox" id="allergy4" name="allergy4" value="땅콩">
							<label for="allergy4">땅콩</label>&nbsp;
						</span>
					</div>
					<div class="checkbox_inside"> 
						<span class="check">
							<input type="checkbox" id="allergy5" name="allergy5" value="밀">
							<label for="allergy5">밀</label>&nbsp;
						</span>
						<span class="check">
							<input type="checkbox" id="allergy6" name="allergy6" value="복숭아">
							<label for="allergy6">복숭아</label>&nbsp;
						</span>
						<span class="check">
							<input type="checkbox" id="allergy7" name="allergy7" value="우유">
							<label for="allergy7">우유</label>&nbsp;
						</span>
						<span class="check">
							<input type="checkbox" id="allergy11" name="allergy11" value="없음">
							<label for="allergy11">없음</label>&nbsp;
						</span>
					</div>
				</div>
			</li>
			<li class="depth1">
				<a href="menu_search_result.jsp"><input type="button" id="btn_search" name="btn_search" value="검색"></a>
		</ul>
	</form>
	</div>
	<div id="overlay" class="overlay"></div>
</body>
</html>