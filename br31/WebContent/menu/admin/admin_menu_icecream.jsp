<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.br31.dao.*,com.br31.vo.*,java.util.*" %>
<%
	MenuDAO dao = new MenuDAO();
	ArrayList<MenuVO> list = dao.getAdminIcecreamList();
	
	MenuVO thisvo = new MenuVO();
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/admin_menu.css">
</head>
<script src="http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script>

/******
	팝업창 띄우기
*****/

function updatePop(){
	window.open("admin_menu_update.jsp","","width = 800, height = 850, top = 50, left = 800");
}
function writePop(){
	window.open("admin_menu_write.jsp","","width = 800, height = 850, top = 50, left = 800");
}
/*
function nutrientPop(){
	window.open("admin_menu_nutrient.jsp","","width = 1000, height = 500, top = 200, left = 50");
}
*/
function ajax_list(pname){
	$.ajax({
		url:"admin_menu_nutrient_ajax.jsp?pname="+pname,
		success:function(result){
			//실행결과에 따른 처리.
			var jdata = JSON.parse(result);
			var output = ""
		}
	});
}
$(document).ready(function(){
	$("#nutrients").click(function(){
		var pname = $("#pname").text();
		ajax_list(pname);
		
		$("#modal").show();
		$("#overlay").css({"pointer-events":"auto"});
	});
	$("#exit").click(function(){
		$("#modal").hide();
		$("#overlay").css({"pointer-events":"none"});
	});
	$("#overlay").click(function(){
		$("#modal").hide();
		$("#overlay").css({"pointer-events":"none"});
	});
	
});

</script>
<body>

<!-- header -->
	<jsp:include page = "../../admin_header.jsp"></jsp:include>

<!-- content -->
<section class="page">
<div class="content">
<h3 class="title">메뉴 관리</h3>
<form name="menu_view" action="#" method="get" class="menu_form">
	<div class="category">
		<ul class="category">
			<li class="selected"><a href="admin_menu_icecream.jsp">아이스크림</a></li>
			<li><a href="admin_menu_coffee.jsp">커피</a></li>
		</ul>
	</div>
	<div class="buttons">
		<ul class="buttons">
			<li><button class="update" onclick = "updatePop()">수정</button></li>
			<li><button class="update">삭제</button></li>
			<li><button class="update" onclick = "writePop()">등록</button></li>
		</ul>
	</div>
<div class="table">
	<ul>
		<li>
			<table class="menu_ice">
				<tr>
					<th>선택</th>
					<th>메뉴 이름</th>
					<th>메뉴 설명</th>
					<th>추천 플레이버</th>
					<th>해쉬태그</th>
					<th>메뉴 사진</th>
					<th>영양정보</th>
				</tr>
				<% for(MenuVO vo:list){ 
					thisvo = vo;
				%>
				<tr>
					<td><input type="checkbox" id="icecream1" name="엄마는 외계인" value="엄마는 외계인"></td>
					<td id="pname"><%=vo.getPname() %></td>
					<td><%=vo.getIntro() %></td>
					<td>
						<ul>
						<% if(vo.getRec_flavor()==null){ %>
							<li>-</li>
						<% }else{
							for(String flavor:vo.getRec_flavor()){
							%>
							<li><%=flavor %></li>
							<%} 
							}%>
						</ul>
					</td>
					<td>
						<ul>
						<% if(vo.getHashtag()==null){ %>
							<li>-</li>
						<% }else{
							for(String hash:vo.getHashtag()){
							%>
							<li><%= hash %></li>
							<%} 
							}%>
						</ul>
					</td>
					<td><img class="p_image" src="http://localhost:9000/br31/menu/images/<%=vo.getPsfile() %>"></td>
					<td><button type="button" class="nutrients_more" id="nutrients">보기</button></td>
				</tr>
				<%} %>
			</table>
		</li>
	</ul>
</div>
</form>
<div class="modal" id="modal">
	<button class="exit" id="exit">&times;</button>
<table class="nutrient_info">
			<tr>
				<th>제품명</th>
				<td><%=thisvo.getPname() %></td>
			</tr>
			<tr>
				<th>1회 제공량(g)</th>
				<td><%=thisvo.getOne_amount() %></td>
			</tr>
			<tr>
				<th>열량(kcal)</th>
				<td><%=thisvo.getKcal() %></td>
			</tr>
			<tr>				
				<th>나트륨(mg)</th>
				<td><%=thisvo.getNatrium() %></td>
			</tr>
			<tr>
				<th>당류(g)</th>
				<td><%=thisvo.getSugar() %></td>
			</tr>
			<tr>
				<th>포화지방(g)</th>
				<td><%=thisvo.getFat() %></td>
			</tr>
			<tr>
				<th>단백질(g)</th>
				<td><%=thisvo.getProtein() %></td>
			</tr>
			<tr>
				<th>카페인(mg)</th>
				<td><%=thisvo.getCaffeine() %></td>
			</tr>
			<tr>
				<th>알레르기 성분</th>
				<td><%
					String text = "";
					for(int i=0;i<thisvo.getAllergy().length;i++) {
						if(i==thisvo.getAllergy().length-1) {
							text += thisvo.getAllergy()[i];
						}else {
							text += thisvo.getAllergy()[i]+",";
						}
					}
				%>
				<%= text %>
				</td>
			</tr>			
	</table>
</div>
	<div class="overlay" id="overlay"></div>
</div>
</section>
<!-- footer -->
	<jsp:include page = "../../footer.jsp"></jsp:include>
</body>
</html>