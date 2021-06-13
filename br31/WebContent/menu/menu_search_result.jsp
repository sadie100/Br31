<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.br31.dao.*, com.br31.vo.*, java.util.*" %>
<% 
	String pname=request.getParameter("pname");
	String hashtag = request.getParameter("hashtag");
	String status = request.getParameter("status");
	String[] allergies = request.getParameterValues("allergy");
	
	MenuDAO dao = new MenuDAO();
	//ArrayList<MenuVO> list = dao.getMenuIcecreamList(status);
	//dao 다듬고, 적용하면 끝!
%>
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
<section class="page">
<div class="search_result_title">
	<div class="title">
		<div class="title_left"></div>
		<img src="http://localhost:9000/br31/menu/images/h_search_result.png">
		<div class="title_right"></div>
	</div>
</div>
<div class="search_result_label">
	<label>검색결과 총</label>
	<label id="search_count" class="search_count">1</label>
	<label>건 검색되었습니다.</label>
</div>
<div class="search_result_button">
	<button>다시 검색하기</button>
</div>

<section class="icecream_menu">
		<div class="icecream_menu">
		<section class="search_result">
		<table class="icecream_menu">
			<tr class="src_one">
				<td class="src_one">
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
				
			</tr>
			</table>
		</section>
		</div>
	</section>



</section>

<!-- footer -->
<jsp:include page = "../footer.jsp"></jsp:include>

</body>
</html>