<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/br31.css">
</head>
<body id="br_event">
	<!-- header -->
	<jsp:include page="../admin_header.jsp"></jsp:include>
		
	<!-- content -->
	<article class="br_event_list">
	<div id="content">
        <div class="inner_content">
            <div class="event_wrap">
                <h3 class="line_title">
					<span>
						<img src="../images/eventtitle.png" alt="event">
					</span>
                    배스킨라빈스와 함께 하는 다양한 혜택과 이벤트
                </h3>
                <div class="tabmenu">
                    <ul>
                        <li class="all">
                            <a href="/event/list.php" class="on">ALL</a>
                        </li>
                        <li class="store">
                            <a href="/event/list.php?flag=A">STORE EVENT</a>
                        </li>
                        <li class="online">
                            <a href="/event/list.php?flag=B">ONLINE EVENT</a>
                        </li>
                        <!-- li class="mobile">
							<a href="/event/list.php?flag=D">MOBILE EVENT</a>
						</li -->
                        <li class="happypoint">
                            <a href="/event/list.php?flag=C">HAPPYPOINT EVENT </a>
                        </li>
                    </ul>
                </div>
                <div class="event_list">
                    <ul>

                        <!-- <li>
                            <a href="/menu/fom.php#area4">
                                <figure><img src="../images/banner_flavor_month_insta_1907.png" alt="HASHTAG EVENT"></figure>
                                <span class="type"><img src="../images/stit_online.gif" alt="ONLINE EVENT"></span>
                                <span class="title">핑크 스타 사진을 인스타그램에 올려주세요!</span>
                                <span class="period">2019-07-01~2019-07-26</span>
                            </a>
                        </li> 
						
						<li>
                            <a href="/menu/fom.php#area4">
                                <figure><img src="../images/banner_flavor_month_insta_2010.png" alt="HASHTAG EVENT"></figure>
                                <span class="type"><img src="../images/stit_online.gif" alt="ONLINE EVENT"></span>
                                <span class="title">미찐 감자 사진을 인스타그램에 올려주세요!</span>
                                <span class="period">2020-10-01~2020-10-26</span>
                            </a>
                        </li>-->
						
                                                            <li>
                                        <a href="/menu/fom.php#area4">
                                            <figure><img src="../images/1685842555.jpg" alt=""></figure>
                                            <span class="type"><img src="../images/stit_online.gif" alt="ONLINE EVENT"></span>
                                            <span class="title">5월 이달의맛 인스타그램에 사진을 올려주세요!</span>
                                            <span class="period">2021-05-01~2021-05-31</span>
                                        </a>
                                    </li>

                                    
                                    <li>
                                        <a href="view.php?flag=&amp;seq=8964">
                                            <figure><img src="../images/1662366722.jpg" alt=""></figure>
                                            <span class="type"><img src="../images/stit_happypoint.gif" alt="HAPPYPOINT EVENT"></span>
                                            <span class="title">가장 먼저 맛보는 이달의 맛! 구독 서비스 핑크버드!</span>
                                            <span class="period">2021-05-22~2021-05-27</span>
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a href="view.php?flag=&amp;seq=8944">
                                            <figure><img src="../images/1644051470.jpg" alt=""></figure>
                                            <span class="type"><img src="../images/stit_happypoint.gif" alt="HAPPYPOINT EVENT"></span>
                                            <span class="title">메가 해피 데이즈! 케이크 최대 7,000원 OFF!</span>
                                            <span class="period">2021-05-14~2021-06-13</span>
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a href="view.php?flag=&amp;seq=8624">
                                            <figure><img src="../images/1630631151.jpg" alt=""></figure>
                                            <span class="type"><img src="../images/stit_store.gif" alt="STORE EVENT"></span>
                                            <span class="title">KT 멤버십 고객이라면 누구나 파인트 30% 할인!</span>
                                            <span class="period">상시진행</span>
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a href="view.php?flag=&amp;seq=4922">
                                            <figure><img src="../images/1639297260.png" alt=""></figure>
                                            <span class="type"><img src="../images/stit_store.gif" alt="STORE EVENT"></span>
                                            <span class="title">제휴 할인 카드 혜택 안내</span>
                                            <span class="period">상시진행</span>
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a href="view.php?flag=&amp;seq=8324">
                                            <figure><img src="../images/1625114283.png" alt=""></figure>
                                            <span class="type"><img src="../images/stit_store.gif" alt="STORE EVENT"></span>
                                            <span class="title">매월 25일, 50% M포인트 사용</span>
                                            <span class="period">상시진행</span>
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a href="view.php?flag=&amp;seq=3722">
                                            <figure><img src="../images/1570702843.png" alt=""></figure>
                                            <span class="type"><img src="../images/stit_online.gif" alt="ONLINE EVENT"></span>
                                            <span class="title">2018 한글날 기념 무료 글꼴 공개! 배스킨라빈스체</span>
                                            <span class="period">상시진행</span>
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a href="view.php?flag=&amp;seq=3302">
                                            <figure><img src="../images/1578277305.png" alt=""></figure>
                                            <span class="type"><img src="../images/stit_store.gif" alt="STORE EVENT"></span>
                                            <span class="title">1회용 컵 사용 줄이기 안내</span>
                                            <span class="period">상시진행</span>
                                        </a>
                                    </li>
                                                            <li>
                            <a href="/store/catering.php">
                                <figure><img src="/upload/event/images/banner_delivery.png" alt="해피오더 딜리버리"></figure>
                                <span class="type"><img src="../images/stit_store.gif" alt="STORE EVENT"></span>
                                <span class="title">해피오더 딜리버리로 간편하게 주문하세요!</span>
                                <span class="period">상시진행</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>

    </div>
	</article>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>


</body>
</html>