<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/menu_select.css">
<script src="http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script>
	
	$(document).ready(function(){
		/*
		var tracks = document.getElementsByName("coffee_list");
		var contentsize = document.getElementById("content").offsetWidth; 
		
		for(var i=0;i<2;i++){
			var tracksize = tracks[i].offsetWidth;
			tracks[i].onmousemove = function(){
				var start = -(window.innerWidth-contentsize)/2+400;
				var x = start-(event.clientX);
	
				if(x<= (start+window.innerWidth-tracksize+950)){
					x = (start+window.innerWidth-tracksize+950);
				}else if(x>=start){
					x = start;
				}
				var left = x +"px";
				tracks[i].style.transform = "translateX("+left+")";
				tracks[i].style.transition = "transform 0.2s"
			}
		}
		*/
		var contentsize = document.getElementById("content").offsetWidth; 
		var tracksize = document.getElementById("coffee_list_1").offsetWidth; 
		
			$("#coffee_list_1").mousemove(function(){
				var start = -(window.innerWidth-contentsize)/2+420;
				var x = start-(event.clientX);
	
				if(x<= (start+window.innerWidth-tracksize+930)){
					x = (start+window.innerWidth-tracksize+930);
				}else if(x>=start){
					x = start;
				}
				var left = x +"px";
				$("#coffee_list_1").css({"transform":"translateX("+left+")"});
				$("#coffee_list_1").css({"transition":"transform 0.2s"});
				
			});
			
			$("#coffee_list_2").mousemove(function(){
				var start = -(window.innerWidth-contentsize)/2+420;
				var x = start-(event.clientX);
	
				if(x<= (start+window.innerWidth-tracksize+930)){
					x = (start+window.innerWidth-tracksize+930);
				}else if(x>=start){
					x = start;
				}
				var left = x +"px";
				$("#coffee_list_2").css({"transform":"translateX("+left+")"});
				$("#coffee_list_2").css({"transition":"transform 0.2s"});
				
			});
	});
	
	
</script>
</head>
<body>
<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include>

<!-- content -->
<section class="page">
<section class="inner_page">


<!-- button -->
	<span class="btn_index">
		<button class="left">&lt;</button>
	</span>
	<span class="btn_index">
		<button class="right">&gt;</button>
	</span>

<div class="content" id="content">
	<section class="top_info">
		<label class="eng_name">AMERICANO</label>
		<h1 class="kor_name">아메리카노</h1>
		<label class="p_explain">카페브리즈 커피를 가장 부드럽게 즐길 수 있는 따뜻한 아메리카노</label>
		<div class="no_bg">
			<div class="icecream_img">
				<img src="images/cf_americano.png">
			</div>
			<button class="btn_store_check">판매 매장 확인</button>
			<div class="icons_cf">
				<a href="#"><img src="images/icon_facebook.png"></a>
				<a href="#"><img src="images/icon_twitter.png"></a>
				<a href="#"><img src="images/icon_copy.png"></a>
			</div>
		</div>
	</section>
	<section class="coffee_info">
		<h3 class="coffee_info_title">배스킨라빈스 커피는 어떻게 만들어졌을까요?</h3>
		<img src="images/h_hot_coffee.jpg">
		<div class="coffee_bg">
			<div class="coffee_list" id="coffee_list_1">
				<img src="images/img_hot_coffee_list_1.jpg">
				<img src="images/img_hot_coffee_list_2.jpg">
				<img src="images/img_hot_coffee_list_3.jpg">
				<img src="images/img_hot_coffee_list_4.jpg">
				<img src="images/img_hot_coffee_list_5.jpg">
				<img src="images/img_hot_coffee_list_6.jpg">
				<img src="images/img_hot_coffee_list_7.jpg">
			</div>
		</div>
		<img src="images/h_ice_coffee.jpg">
		<div class="coffee_bg">
			<div class="coffee_list" id="coffee_list_2">
				<img src="images/img_ice_coffee_list_1.jpg">
				<img src="images/img_ice_coffee_list_2.jpg">
				<img src="images/img_ice_coffee_list_3.jpg">
				<img src="images/img_ice_coffee_list_4.jpg">
				<img src="images/img_ice_coffee_list_5.jpg">
				<img src="images/img_ice_coffee_list_6.jpg">
				<img src="images/img_ice_coffee_list_7.jpg">
			</div>
		</div>
		
	</section>
	<section class="instagram">
		<h3 class="title">인스타그램에서 만나는</h3>
		<label class="hashtag">#아메리카노</label>
		<label class="hashtag">#배스킨라빈스</label>
		<div class="pictures">
			<div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_1.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_2.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_3.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_4.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_5.jpg"></div>
			</div>
			<div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_6.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_7.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_8.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_9.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_10.jpg"></div>
			</div>
			<div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_11.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_12.jpg"></div>
				<div><img src="http://localhost:9000/br31/menu/images/instagram/ice_mother_13.jpg"></div>
			</div>
		</div>
	</section>
	<a href="http://localhost:9000/br31/menu/menu_icecream_1.jsp"><button class="list">목록</button></a>
</div>

</section>
</section>

<!-- 이벤트, happy order 하단 띠 -->
<jsp:include page = "menu_select_footer.jsp"></jsp:include>
<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
	
</body>
</html>