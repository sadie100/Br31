<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.br31.dao.*, com.br31.vo.*, java.util.*, com.br31.comms.*" %>
<% 
	String rpage = request.getParameter("page");
	MenuDAO dao = new MenuDAO();
	
	String category="icecream";
	ArrayList<MenuVO> list = dao.getMenuIcecreamList(category);
	
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/menu_list.css">
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
	<section class="logo_icecream">
	</section>
<!-- common part -->
	<jsp:include page = "menu_monthly_icecream.jsp"></jsp:include>
	
	
<!-- ************icecream menu **********-->
<!-- ************icecream menu **********-->
<!-- ************icecream menu **********-->
<!-- ************icecream menu **********-->
<!-- ************icecream menu **********-->


	<section class="icecream_menu">
		<div class="icecream_menu">
		<table class="icecream_menu">
			<% 
				int i=1;
				for(MenuVO vo : list){ 
					if(i%4==1){%>
					<tr>
					<% }%>
					<td>
						<a href="menu_icecream_select.jsp?pname=<%=vo.getPname()%>" class="outer">
							<span class="depth1">
								<span class="depth2">
									<label class="name"><%=vo.getPname() %></label>
									<%
									if(vo.getHashtag()!=null){
										for(int v=0; v<vo.getHashtag().length; v++){
										%>
										<label class="hashtag"><%=vo.getHashtag()[v] %></label>
										 <%
										 if(v>=2){
												v = vo.getHashtag().length;
											}  
										}
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
							<span class="depth2">
								<label class="name">블랙 소르베</label>
								<label class="hashtag">#블랙소르베</label>
								<label class="hashtag">#레몬라임소르베</label>
								<img src="http://localhost:9000/br31/menu/images/ice_black.png">					
							</span>
						</span>
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">트리플 치즈 러브</label>
								<label class="hashtag">#치즈</label>
								<label class="hashtag">#치즈케이크</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_triple.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">러브미</label>
								<label class="hashtag">#바닐라</label>
								<label class="hashtag">#스트로베리</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_loveme.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">엄마는 외계인</label>
								<label class="hashtag">#초콜릿</label>
								<label class="hashtag">#초코볼</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_mother.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">오레오 쿠키 앤 크림치즈</label>
								<label class="hashtag">#오레오쿠키앤크림치즈</label>
								<label class="hashtag">#크림치즈아이스크림</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_oreo_creamcheese.png">					
							</span>
						</span>
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">아빠는 딸바봉</label>
								<label class="hashtag">#아빠는딸바봉</label>
								<label class="hashtag">#딸기아이스크림</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_father.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">봉쥬르, 마카롱</label>
								<label class="hashtag">#초콜릿</label>
								<label class="hashtag">#크림치즈</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_bonjour.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">아몬드 봉봉</label>
								<label class="hashtag">#아몬드</label>
								<label class="hashtag">#초콜릿</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_almondbong.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">민트 초콜릿 칩</label>
								<label class="hashtag">#민트</label>
								<label class="hashtag">#초콜릿칩</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_mintchoco.png">					
							</span>
						</span>
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">슈팅스타</label>
								<label class="hashtag">#팝핑캔디</label>
								<label class="hashtag">#체리시럽</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_shooting.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">사랑에 빠진 딸기</label>
								<label class="hashtag">#사빠딸</label>
								<label class="hashtag">#사랑에빠진딸기</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_loveberry.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">초코나무 숲</label>
								<label class="hashtag">#그린티</label>
								<label class="hashtag">#초콜릿</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_chocotree.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">뉴욕 치즈케이크</label>
								<label class="hashtag">#치즈</label>
								<label class="hashtag">#치즈케이크</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_newyork.png">					
							</span>
						</span>
					</a>
				</td>
			</tr>
			<tr>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">피스타치오 아몬드</label>
								<label class="hashtag">#피스타치오</label>
								<label class="hashtag">#아몬드</label>
								<img src="http://localhost:9000/br31/menu/images/ice_pistachio.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">베리베리 스트로베리</label>
								<label class="hashtag">#베리베리</label>
								<label class="hashtag">#스트로베리</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_berry2.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">바람과 함께 사라지다</label>
								<label class="hashtag">#블루베리</label>
								<label class="hashtag">#딸기</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_wind.png">					
							</span>
						</span>
					</a>
				</td>
				<td>
					<a href="#">
						<span class="depth1">
							<span class="depth2">
								<label class="name">레인보우 샤베트</label>
								<label class="hashtag">#파인애플</label>
								<label class="hashtag">#오렌지</label>
								<label class="hashtag"><button class="btn_hashtag">+</button></label>
								<img src="http://localhost:9000/br31/menu/images/ice_rainbow.png">					
							</span>
						</span>
					</a>
				</td>
			</tr>
			-->
			</table>
		</div>
	</section>
	
	
	<!-- **************page********* -->
	<!-- **************page********* -->
	<!-- **************page********* -->
	
	
		<div class="pagination">
			<a href="menu_icecream_1.jsp">&lt;</a>
			<a href="menu_icecream_1.jsp">1</a>
			<a href="menu_icecream_2.jsp">2</a>
			<a href="menu_icecream_3.jsp">3</a>
			<a href="menu_icecream_2.jsp">&gt;</a>
		</div>
	</section>	
</div>

<!-- footer -->
	<jsp:include page = "../footer.jsp"></jsp:include>
</body>
</html>