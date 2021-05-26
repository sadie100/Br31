<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/menu_list.css">
<style>
div.pagination a:nth-child(4){
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
	<section class="logo_icecream">
	</section>
<!-- monthly best icecream -->
	<jsp:include page = "menu_monthly_icecream.jsp"></jsp:include>
	
	
<!-- ************icecream menu **********-->
<!-- ************icecream menu **********-->
<!-- ************icecream menu **********-->
<!-- ************icecream menu **********-->
<!-- ************icecream menu **********-->


	<section class="icecream_menu">
		<div class="title">
			<div class="title_left"></div>
			<img src="http://localhost:9000/br31/menu/images/h_title_icecream.png">
			<div class="title_right"></div>
		</div>
		<div class="icecream_menu">
		<table class="icecream_menu">
			<tr>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">블록팩 (110ml)</label>
								<label class="hashtag">#아몬드봉봉</label>
								<label class="hashtag">#체리쥬빌레</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_block.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">*파인트</label>
								<label class="hashtag">#파인트</label>
								<label class="hashtag">#3가지맛</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_pint.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">*쿼터</label>
								<label class="hashtag">#쿼터</label>
								<label class="hashtag">#4가지맛</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_quarter.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">*패밀리</label>
								<label class="hashtag">#패밀리</label>
								<label class="hashtag">#5가지맛</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_family.png">					
							</span>
						</span>
					</a>
				</td>
			</tr> 
			<tr>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">*하프갤런</label>
								<label class="hashtag">#하프갤론</label>
								<label class="hashtag">#6가지맛</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_halfgallon.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">*핸드팩세트</label>
								<label class="hashtag">#파인트</label>
								<label class="hashtag">#핸드팩세트</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_handpack.png">					
							</span>
						</span>
					</a>
				</td>
				</tr>
			</table>
		</div>
	</section>
	
	
	<!-- **************page********* -->
	<!-- **************page********* -->
	<!-- **************page********* -->
	
	

	<div class="pagination">
		<a href="menu_icecream_2.jsp">&lt;</a>
		<a href="menu_icecream_1.jsp">1</a>
		<a href="menu_icecream_2.jsp">2</a>
		<a href="menu_icecream_3.jsp">3</a>
		<a href="menu_icecream_3.jsp">&gt;</a>
	</div>
	</section>	
</div>

<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>