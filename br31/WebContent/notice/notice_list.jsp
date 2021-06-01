<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/br31.css">

</head>
<body id="br_about">
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- content -->
	<div id="content">
		<h3 class="line_title">
			<span>
				<img src="http://localhost:9000/br31/images/h_notice.png" alt="NOTICE">
			</span>
			배스킨라빈스의 신제품 안내, 신규 CF등 다양한 소식을 알려드립니다!
		</h3>
		
		<div class="inner_content">
			<div class="list_search">
				<form name="searchform" method="get" action="notice_list.php">
					<fieldset>
						<legend>NOTICE 검색 폼</legend>
						<select name="find" id="find" class="inline">
							<option value="">전체</option>
							<option value="TITLE">제목</option>
							<option value="CONTS">내용</option>
						</select>
						<input type="text" name="searchword" value="" title="검색어 입력" class="inline">
						<p class="submit">
							<button type="submit">검색</button>
						</p>
					</fieldset>
				</form>
			</div>
			<p class="result_num">총 <span>51</span> 건이 검색되었습니다.</p>

			<div class="list_wrap">				

				<!-- 리스트 -->
				<table class="borad_table">
					<colgroup>
						<col width="8%">
						<col width="*">
						<col width="10%">
					</colgroup>
					<tbody>
																<tr>
							<td class="num">51</td>
							<td class="title">
								<a href="notice_view.php?seq=6621&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 밀탑의 시그니처 국내산 팥으로 더욱 맛있어진 팥빙수 블라스트 출시!</a>
								
								
															</td>
							<td class="period">2021-05-20</td>
						</tr>
											<tr>
							<td class="num">50</td>
							<td class="title">
								<a href="notice_view.php?seq=6581&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 밀탑의 시그니처 국내산 팥으로 더욱 맛있는 배라 빙수를 즐겨보세요!</a>
								
								
															</td>
							<td class="period">2021-05-13</td>
						</tr>
											<tr>
							<td class="num">49</td>
							<td class="title">
								<a href="notice_view.php?seq=6542&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 워터프로세스 방식으로 풍미는 보존, 카페인은 제거한 디카페인 커피 출시!</a>
								
								
															</td>
							<td class="period">2021-04-30</td>
						</tr>
											<tr>
							<td class="num">48</td>
							<td class="title">
								<a href="notice_view.php?seq=6361&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 달콤한 연유와 딸기 과육이 들어있는 딸기 연유 라떼 출시!</a>
								
								
															</td>
							<td class="period">2021-03-17</td>
						</tr>
											<tr>
							<td class="num">47</td>
							<td class="title">
								<a href="notice_view.php?seq=6161&amp;strPageParam=Page=1|find=|searchword=" class="tit">월리를 찾아라 닮은꼴 콘테스트 당첨자 발표</a>
								
								
															</td>
							<td class="period">2020-12-22</td>
						</tr>
											<tr>
							<td class="num">46</td>
							<td class="title">
								<a href="notice_view.php?seq=5542&amp;strPageParam=Page=1|find=|searchword=" class="tit">개인정보처리방침 변경 안내</a>
								
								
															</td>
							<td class="period">2020-07-14</td>
						</tr>
											<tr>
							<td class="num">45</td>
							<td class="title">
								<a href="notice_view.php?seq=5361&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 아이스크림과 함께 즐기는 배스킨라빙수 출시</a>
								
								
															</td>
							<td class="period">2020-06-10</td>
						</tr>
											<tr>
							<td class="num">44</td>
							<td class="title">
								<a href="notice_view.php?seq=5281&amp;strPageParam=Page=1|find=|searchword=" class="tit">배라를 배달로 먹방 콘테스트 수상자 발표</a>
								
								
															</td>
							<td class="period">2020-05-15</td>
						</tr>
											<tr>
							<td class="num">43</td>
							<td class="title">
								<a href="notice_view.php?seq=5221&amp;strPageParam=Page=1|find=|searchword=" class="tit">6월 이달의 맛 선거 투표 결과 발표</a>
								
								
															</td>
							<td class="period">2020-04-29</td>
						</tr>
											<tr>
							<td class="num">42</td>
							<td class="title">
								<a href="notice_view.php?seq=4821&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 깔끔한 산미와 따사로운 햇살같은 커피원두 카페브리즈 써니 출시!</a>
								
								
															</td>
							<td class="period">2020-01-10</td>
						</tr>
											<tr>
							<td class="num">41</td>
							<td class="title">
								<a href="notice_view.php?seq=4701&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 배스킨라빈스 커피와 함께하는 특별한 시간을 즐겨보세요</a>
								
								
															</td>
							<td class="period">2019-12-04</td>
						</tr>
											<tr>
							<td class="num">40</td>
							<td class="title">
								<a href="notice_view.php?seq=4501&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 와츄원 쉐이크의 변신! 버블 와츄원 쉐이크</a>
								
								
															</td>
							<td class="period">2019-10-07</td>
						</tr>
											<tr>
							<td class="num">39</td>
							<td class="title">
								<a href="notice_view.php?seq=4362&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 올 한가위도 배스킨라빈스 선물 세트로 온 백성을 풍족하게 하여라</a>
								
																<span class="addfile">첨부파일</span>
								
															</td>
							<td class="period">2019-08-30</td>
						</tr>
											<tr>
							<td class="num">38</td>
							<td class="title">
								<a href="notice_view.php?seq=4041&amp;strPageParam=Page=1|find=|searchword=" class="tit">[신제품 출시] 아이스크림과 함께 즐기는 빙수! 배스킨라:빙수!</a>
								
								
															</td>
							<td class="period">2019-05-31</td>
						</tr>
											<tr>
							<td class="num">37</td>
							<td class="title">
								<a href="notice_view.php?seq=3961&amp;strPageParam=Page=1|find=|searchword=" class="tit">개인정보처리방침 변경 안내</a>
								
								
															</td>
							<td class="period">2019-05-13</td>
						</tr>
										</tbody>
				</table> 
				
				<!-- 페이징 -->
				<div class="search_pagination">
							<nav class="pagination">
			<ul>
	<li class="bu prev"><a href="#">◀</a></li>
	<li><strong>1</strong></li>
<li><a href="?Page=2&amp;find=&amp;searchword=">2</a></li>
<li><a href="?Page=3&amp;find=&amp;searchword=">3</a></li>
<li><a href="?Page=4&amp;find=&amp;searchword=">4</a></li>
	<li class="bu next"><a href="#">▶</a>
		</li></ul>
	</nav>
				</div>
			</div>
		</div>

	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>


</body>
</html>