<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	footer {
		background-image: url("http://localhost:9000/br31/images/bg_footer.png");
	}
	footer>div {
		width: 1400px;
		margin: auto;
		/* border-top: 1px solid orange; */
	}
	footer ul {
		list-style-type: none;
		padding: 0;
		text-align: center;
	}
	footer li {
		display: inline-block;
	}
	footer div {
		text-align: center;
	}

	footer nav:first-child a {
		display: inline-block;
		text-decoration: none;
		color: gray;
		font-size: 14px;
		margin: 25px 20px;
		letter-spacing: -1px;
	}
	
	footer div>nav:nth-child(2) {
		/* background-color: #f2f2f2; */
	}
	footer div>nav:nth-child(2) li {
		margin: 20px;
	}
	footer div>nav:nth-child(2) li:nth-child(4),
	footer div>nav:nth-child(2) li:nth-child(5) {
		margin-right: 0;
	}
	footer div:nth-child(3) {
		padding: 30px;
	}
	footer span {
		display: inline-block;
		font-size: 12px;
		letter-spacing: -1px;
	}
	
	footer .btn_family_site img {
		width: 15px;
		height: 15px;
		margin-left: 15px;
	}
	footer .btn_family_site {
		position: relative;
	}	
	
	footer .btn_family_site span {
		display: inline-block;
		font-size: 12px;
		background-color: white;
		border-radius: 5px;
		padding: 3px 20px;
		border: 1px outset lightgray;
	}
	
	footer .sub_family_site li {
		display: none;
		height: 7px;
		text-align: left;
		margin: 0px;
	}
	footer .sub_family_site {
		width: 126px;
		background-color: white;
		position: absolute;
		top: -263px;
		border: 1px outset lightgray;
		display: none;
	}
	footer .sub_family_site a {
		display: inline-block;
		width: 126px;
		/* text-align: center; */
		text-decoration: none;
		color: black;
		font-size: 11px;
		letter-spacing: -1px;
	}
	footer .btn_family_site:hover .sub_family_site li{
		display: block;
	}
	footer .btn_family_site:hover .sub_family_site {
		display: block;
	}
	footer .company_info {
		margin-bottom: 100px;
	}
	
	
</style>
</head>
<body>
	<footer>
		<div>
			<nav>
				<ul>
					<li><a href="#" target="_blank">채용문의</a></li>
					<li><a href="http://www.spc.co.kr/spc/group/GEM_info.spc" target="_blank">윤리신고센터</a></li>
					<li><a href="https://www.happypointcard.com/page/customer/term.spc" target="_blank">이용약관</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">영상정보처리기기운영관리방침</a></li>
					<li><a href="http://happy.spc.co.kr/indexframe.jsp" target="_blank">거래희망회사 사전등록</a></li>
				</ul>
			</nav>
			
			<nav>
				<ul>
					<li><img src="http://localhost:9000/br31/images/btn_happypoint.png"></li>
					<li><img src="http://localhost:9000/br31/images/btn_happymarket.png"></li>
					<li><img src="http://localhost:9000/br31/images/btn_spc_story.png"></li>
					<li><img src="http://localhost:9000/br31/images/btn_norton.gif"></li>
					<li><img src="http://localhost:9000/br31/images/btn_ccm.gif"></li>
					<li><img src="http://localhost:9000/br31/images/btn_ksa.png"></li>
					<li class="btn_family_site"><span>FAMILY SITE<img src="http://localhost:9000/br31/images/mini_arrow.png"></span>
						<ul class="sub_family_site">
							<li><a href="https://baskinschool.hunet.co.kr/Login/LoginGate" target="_blink">배스킨 스쿨</a></li>
							<li><a href="http://www.spc.co.kr/" target="_blink">SPC그룹사이트</a></li>
							<li><a href="https://www.spcmagazine.com/" target="_blink">SPC MAGAZINE</a></li>
							<li><a href="http://www.brkorea.co.kr/main/main.php" target="_blink">BR코리아</a></li>
							<li><a href="http://www.happypointcard.com/page/main/index.spc" target="_blink">해피포인트카드</a></li>
							<li><a href="https://www.caffe-pascucci.co.kr/index.asp" target="_blink">파스쿠찌</a></li>
							<li><a href="https://spcsamlip.co.kr/" target="_blink">삼립</a></li>
							<li><a href="https://www.paris.co.kr/" target="_blink">파리바게트</a></li>
							<li><a href="http://www.dunkindonuts.co.kr/" target="_blink">던킨도너츠</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			
			<div><img src="http://localhost:9000/br31/images/footer_logo.png"></div>
		
			<div class="company_info">
				<span>사업자 등록번호 : 303-81-09535　비알코리아(주)대표이사 도세호　서울특별시 서초구 남부순환로 2620(양재동 11-149번지)</span><br>
				<span>TEL : 080-555-3131　개인정보관리책임자 : 김경우</span><br>
				<span>Copyright ⓒ 2016 BRKOREA Company. All Rights Reserved.</span><br>
			</div>
		</div>
	</footer>
</body>
</html>