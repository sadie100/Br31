<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.br31.dao.*, com.br31.vo.*, java.util.*" %>
<% 
	MenuDAO dao = new MenuDAO();
	String category="coffee";
	ArrayList<MenuVO> list = dao.getMenuIcecreamList(category);
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

<!-- header -->
	<jsp:include page = "../header.jsp"></jsp:include>

<!-- content -->
<div class="content">
	<section class="logo_coffee">
	</section>
	
	
<!-- ************coffee menu **********-->
<!-- ************coffee menu **********-->
<!-- ************coffee menu **********-->
<!-- ************coffee menu **********-->

<section class="page">
	<section class="icecream_menu">
		<div class="title">
			<div class="title_left"></div>
				<img src="http://localhost:9000/br31/menu/images/h_title_coffee.png">
			<div class="title_right"></div>
			<span class="search">
				<button class="btn_search" id="btn_search">검색</button>
			</span>
		</div>
	<jsp:include page="menu_search_box.jsp">
		<jsp:param name="category" value="COFFEE" />
	</jsp:include>
		<div class="icecream_menu">
		<table class="icecream_menu">
		<% 
			int i=1;
			for(MenuVO vo : list){ 
				if(i%4==1){%>
				<tr>
				<% }%>
				<td>
					<a href="menu_coffee_select.jsp?pname=<%=vo.getPname()%>" class="outer">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name"><%=vo.getPname() %></label>
								<%
								if(vo.getHashtag()!=null){
										for(String hash : vo.getHashtag()){%>
										<!-- <a href="#" class="hashtag"><%=hash %></a>-->
										<!-- <span class="depth3"><input type="submit" class="hashtag" onclick="location.href='menu_search_result.jsp?pname=<%=vo.getPname()%>'" value="<%=hash %>"></span>-->
										<label class="hashtag"><%=hash %></label>
										 <%}
									}
									 %>
									<img src="http://localhost:9000/br31/menu/images/<%=vo.getPsfile() %>">
							</span>
						</span>
					</a>
				</td>
				<% 
				if(i%4==0 || vo.getPname().equals(list.get(list.size()-1).getPname())){ %>
				</tr>
			 	 <%}
				i++;
				}%>
				<!-- 
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">아이스 아메리카노</label>
								<label class="hashtag">#아메리카노</label>
								<label class="hashtag">#카페브리즈</label>
								<img src="http://localhost:9000/br31/menu/images/cf_ice_americano.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">아메리카노 (L)</label>
								<label class="hashtag">#아메리카노</label>
								<img src="http://localhost:9000/br31/menu/images/cf_L_americano.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">아이스 아메리카노 (L)</label>
								<label class="hashtag">#아이스</label>
								<label class="hashtag">#아메리카노</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_ice_americano.png">					
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
								<label class="name">에스프레소 아포가토</label>
								<label class="hashtag">#에스프레소</label>
								<label class="hashtag">#아포가토</label>
								<img src="http://localhost:9000/br31/menu/images/cf_espresso_apo.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">바닐라빈 라떼</label>
								<label class="hashtag">#바닐라빈</label>
								<label class="hashtag">#라떼</label>
								<img src="http://localhost:9000/br31/menu/images/cf_vanilla.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">아이스 바닐라빈 라떼</label>
								<label class="hashtag">#바닐라빈</label>
								<label class="hashtag">#라떼</label>
								<img src="http://localhost:9000/br31/menu/images/cf_ice_vanilla.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">연유 크러쉬 라떼</label>
								<label class="hashtag">#연유</label>
								<label class="hashtag">#연유크러쉬</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_sweetmilk_crush.png">					
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
								<label class="name">연유 라떼</label>
								<label class="hashtag">#우유</label>
								<label class="hashtag">#연유</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_sweetmilk.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">아이스 연유 라떼</label>
								<label class="hashtag">#연유</label>
								<label class="hashtag">#우유</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_ice_sweetmilk.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">카페 라떼</label>
								<label class="hashtag">#라떼</label>
								<label class="hashtag">#카페브리즈</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_cafelatte.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">아이스 카페 라떼</label>
								<label class="hashtag">#라떼</label>
								<label class="hashtag">#카페브리즈</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_ice_cafelatte.png">					
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
								<label class="name">카페 모카</label>
								<label class="hashtag">#모카</label>
								<label class="hashtag">#카페브리즈</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_cafemocha.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">아이스 카페 모카</label>
								<label class="hashtag">#모카</label>
								<label class="hashtag">#카페브리즈</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_ice_cafemocha.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">카라멜 마끼아또</label>
								<label class="hashtag">#카라멜</label>
								<label class="hashtag">#마끼아또</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_caramel.png">	
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2_no_bg">
								<label class="name">아이스 카라멜 마끼아또</label>
								<label class="hashtag">#카라멜</label>
								<label class="hashtag">#마끼아또</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/cf_ice_caramel.png">					
							</span>
						</span>
					</a>
				</td>
			</tr>
				 -->
			</table>
		</div>
	</section>
</section>
	
</div>

<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>