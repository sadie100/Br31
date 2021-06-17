<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.br31.dao.*,com.br31.vo.*,java.util.*" %>
<%
	MenuDAO dao = new MenuDAO();
	String status= "icecream";
	ArrayList<MenuVO> list = dao.getAdminList(status);
	
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

function getPname(){
	if($("input[type='checkbox']:checked").length==0){
		alert("하나 이상 선택해 주세요.")
	}else{
		
	}
	//var checks = [];
	//var index = $("input[type='checkbox']:checked").parents("tr").index();
	//checks.push("input[type='checkbox']:checked");
	//var index = x.parents("tr").index();
	//console.log(index);
	//var pname = $("#menu_table").find("tr").eq(index).find("span").text();
}

function ajax_list(pname){
	$.ajax({
		url:"admin_menu_nutrient_ajax.jsp?pname="+pname,
		success:function(result){
			//실행결과에 따른 처리.
			var jdata = JSON.parse(result);
			//var output = "<button class='exit' id='exit'>&times;</button>";
			var output = "<table class='nutrient_info'>";
			output += "<tr><th>제품명</th><td>"+jdata.pname+"</td></tr>";
			output += "<tr><th>1회 제공량(g)</th><td>"+jdata.one_amount+"</td></tr>";
			output += "<tr><th>열량(kcal)</th><td>" + jdata.kcal + "</td></tr>";
			output += "<tr><th>나트륨(mg)</th><td>"+jdata.natrium+"</td></tr>";
			output += "<tr><th>당류(g)</th><td>"+jdata.sugar+"</td></tr>";
			output += "<tr><th>포화지방(g)</th><td>"+jdata.fat+"</td></tr>";
			output += "<tr><th>단백질(g)</th><td>"+jdata.protein+"</td></tr>";
			output += "<tr><th>카페인(mg)</th><td>"+jdata.caffeine+"</td></tr>";
			output += "<tr><th>알레르기 성분</th><td>"+jdata.allergy+"</td></tr></table>";
			
			$("#modal_content").append(output);
		}//success
	});//ajax
}//ajax_list function

$(document).ready(function(){
	$("td").find("button").click(function(){
		$("#modal_content").empty();
		var x = document.activeElement;
		var index = $(x).parents("tr").index();
		var pname = $("#menu_table").find("tr").eq(index).find("span").text();
		ajax_list(pname);
		
		$("#modal").show();
		$("#overlay").css({"pointer-events":"auto"});
	}); 
	$("#modal").find("button").click(function(){
		$("#modal").hide();
		$("#overlay").css({"pointer-events":"none"});
	});
	$("#overlay").click(function(){
		$("#modal").hide();
		$("#overlay").css({"pointer-events":"none"});
	});
	$("#btn_update").click(function(){
		if($("input[type='checkbox']:checked").length==0){
			alert("수정할 메뉴를 선택해 주세요.");
			return false;
		}else if($("input[type='checkbox']:checked").length>1){
			alert("수정은 한 번에 하나씩만 진행할 수 있습니다.");
			return false;
		}else{
			$("#hidden_tag").val("update");
			menu_form.submit();
		}
	});
	
	
});//document.ready

</script>
<body>

<!-- header -->
	<jsp:include page = "../../admin_header.jsp"></jsp:include>

<!-- content -->
<section class="page">
<div class="content">
<h3 class="title">메뉴 관리</h3>
<form name="menu_form" action="admin_menu_icecream_process.jsp" method="get" class="menu_form" id="menu_form">
		<input type="hidden" id="hidden_tag" name="status">
	<div class="category">
		<ul class="category">
			<li class="selected"><a href="admin_menu_icecream.jsp">아이스크림</a></li>
			<li><a href="admin_menu_coffee.jsp">커피</a></li>
		</ul>
	</div>
	<div class="buttons">
		<ul class="buttons">
			<li><button type="button" class="update" id="btn_update">수정</button></li>
			<li><button type="button" class="update" id="btn_delete">삭제</button></li>
			<li><button type="button" class="update" id="btn_write">등록</button></li>
		</ul>
	</div>
<div class="table">
	<ul>
		<li>
			<table class="menu_ice" id="menu_table">
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
					<td><input type="checkbox" id="menu_check" name="menu_check" value="<%=vo.getPname()%>"></td>
					<td id="pname"><span><%=vo.getPname() %></span></td>
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
					<td><button type="button" class="nutrients_more" id="nutrients">보기</button>
					</td>
				</tr>
				<%} %>
			</table>
		</li>
	</ul>
</div>
</form>
<div class="modal" id="modal">
<button class='exit' id='exit'>&times;</button>
<div class="modal_content" id="modal_content">
</div>
</div>
<div class="overlay" id="overlay"></div>
</div>
</section>
<!-- footer -->
	<jsp:include page = "../../footer.jsp"></jsp:include>
</body>
</html>