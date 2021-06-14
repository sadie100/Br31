<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.br31.dao.*, com.br31.vo.*, java.util.*" %>
<% 
	MenuDAO dao = new MenuDAO();
	ArrayList<MenuVO> list = dao.getMonthlyIcecreamList();
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/menu_list.css">
<script src="http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script>
	
	$(document).ready(function(){
		var track = document.getElementById("monthly_best_icecream_content");
		var tracksize = track.offsetWidth;
		
		track.onmousemove = function(){
			var x = - (event.clientX);
			if(x<= (window.innerWidth-tracksize)+700){
				x = (window.innerWidth-tracksize)+700;
			}else if(x>=0){
				x = 0;
			}
			var left = x +"px";
			track.style.transform = "translateX("+left+")";
			track.style.transition = "transform 0.2s"
			/*track.style.transition = "left 0.3s"
			track.style.left = left;*/
		}
			
		$("#btn_search").click(function(){
			$("#modal").show();
			$("#overlay").css({"opacity":"1","pointer-events":"auto"});
		});
		$("#exit").click(function(){
			$("#modal").hide();
			$("#overlay").css({"opacity":"0","pointer-events":"none"});
		});
		$("#overlay").click(function(){
			$("#modal").hide();
			$("#overlay").css({"opacity":"0","pointer-events":"none"});
		});
	});
	
	
</script>
</head>
<body>

<!-- monthly best icecream -->
	<section class="monthly_best_icecream">
		<div class="title">
			<img src="http://localhost:9000/br31/menu/images/h_monthly_best_icecream.png">
		</div>
		<div class="best_icecream_bg">
			<div class="monthly_best_icecream_content" id="monthly_best_icecream_content">
		<ul>
		<% for(int i=1;i<2;i++){ %>
			<li>
				<a href="menu_icecream_select.jsp?pname=<%=list.get(i-1).getPname()%>">
					<label class="rank"><strong><%=i %>위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/<%=list.get(i-1).getPsfile()%>">
							</span>
						</span>
					<label class="name"><%=list.get(i-1).getPname() %></label>
				</a>
			</li>
			<%} %>
			
			
			
			
			
			<li>
				<a href="menu_icecream_select.jsp">
					<label class="rank"><strong>2위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/ice_mother.png">
							</span>
						</span>
					<label class="name">엄마는 외계인</label>
				</a>
			</li>
			<li>
				<a href="#">
					<label class="rank"><strong>3위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/ice_almondbong.png">
							</span>
						</span>
					<label class="name">아몬드 봉봉</label>
				</a>
			</li>
			<li>
				<a href="#">
					<label class="rank"><strong>4위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/ice_mintchoco.png">
							</span>
						</span>
					<label class="name">민트 초콜릿 칩</label>
				</a>
			</li>
			<li>
				<a href="#">
					<label class="rank"><strong>5위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/ice_newyork.png">
							</span>
						</span>
					<label class="name">뉴욕 치즈케이크</label>
				</a>
			</li>
			<li>
				<a href="#">
					<label class="rank"><strong>6위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/ice_cherry.png">
							</span>
						</span>
					<label class="name">체리쥬빌레</label>
				</a>
			</li>
			<li>
				<a href="#">
					<label class="rank"><strong>7위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/ice_shooting.png">
							</span>
						</span>
					<label class="name">슈팅스타</label>
				</a>
			</li>
			<li>
				<a href="#">
					<label class="rank"><strong>8위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/ice_oreo_cream.png">
							</span>
						</span>
					<label class="name">오레오 쿠키 앤 크림</label>
				</a>
			</li>
			<li>
				<a href="#">
					<label class="rank"><strong>9위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/ice_wind.png">
							</span>
						</span>
					<label class="name">바람과 함께 사라지다</label>
				</a>
			</li>
			<li>
				<a href="#">
					<label class="rank"><strong>10위</strong></label>
						<span class="depth1">
							<span class="depth2">
								<img src="http://localhost:9000/br31/menu/images/ice_loveberry.png">
							</span>
						</span>
					<label class="name">사랑에 빠진 딸기</label>
				</a>
			</li>
		</ul>
		</div>
		</div>
	</section>
	
	<div class="title">
		<div class="title_left"></div>
			<img src="http://localhost:9000/br31/menu/images/h_title_icecream.png">
		<div class="title_right"></div>
		<span class="search">
			<button class="btn_search" id="btn_search">검색</button>
		</span>
	</div>
	<jsp:include page="menu_search_box.jsp">
		<jsp:param name="category" value="ICECREAM" />
	</jsp:include>
</body>
</html>