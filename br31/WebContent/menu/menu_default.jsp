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

<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include>

<!-- content -->
<div class="content">
	<section class="logo_menu">
	</section>
	
	
<!-- ************coffee menu **********-->
<!-- ************coffee menu **********-->
<!-- ************coffee menu **********-->
<!-- ************coffee menu **********-->

<section class="page">
		<div class="title">
			<div class="title_left"></div>
			<img src="http://localhost:9000/br31/menu/images/h_title_flavor_of_month.png">
			<div class="title_right"></div>
		</div>

		<div class="flavor_of_month">
		<img src="http://localhost:9000/br31/menu/images/logo_flavor_of_month.jpg">
		</div> 

		<div class="title">
			<div class="title_left"></div>
				<img src="http://localhost:9000/br31/menu/images/h_title_icecream.png">
			<div class="title_right"></div>
		</div>
		<div class="btn_more"><a href="menu_icecream.jsp"><button class="btn_more">MORE</button></a></div>
		
	<section class="icecream_menu">
		<div class="icecream_menu">
		<table class="icecream_menu">
			<tr class="src_one">
				<td class="src_one">
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">아이스 홈런볼</label>
								<label class="hashtag">#아이스홈런볼</label>
								<img src="http://localhost:9000/br31/menu/images/ice_homerun.png">					
							</span>
						</span>
					</a>
				</td>
				
			</tr>
			</table>
		</div>
	</section>
	
	<div class="title">
		<div class="title_left"></div>
			<img src="http://localhost:9000/br31/menu/images/h_title_coffee.png">
		<div class="title_right"></div>
	</div>
	<div class="btn_more"><a href="menu_coffee.jsp"><button class="btn_more">MORE</button></a></div>
	
	<section class="icecream_menu">
		<div class="icecream_menu">
		<table class="icecream_menu">
			<tr class="src_one">
				<td class="src_one">
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">아메리카노</label>
								<label class="hashtag">#아메리카노</label>
								<label class="hashtag">#카페브리즈</label>
								<img src="http://localhost:9000/br31/menu/images/cf_americano.png">					
							</span>
						</span>
					</a>
				</td>
			</tr>
			</table>
		</div>
	</section>
	
</section>
	
</div>

<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>