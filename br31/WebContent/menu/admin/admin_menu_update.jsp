<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "com.br31.dao.*,com.br31.vo.*,java.util.*,java.net.URLEncoder" %>
 <%
 	String pname = request.getParameter("pname");
	System.out.println(pname);
 
 	String status = request.getParameter("status");
 	MenuDAO dao = new MenuDAO();
	MenuVO vo = dao.getAdminContent(pname);
	System.out.println(vo.getPname());
	ArrayList<MenuVO> list = dao.getAdminList(status);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/admin_menu.css">
</head>
<body>
<!-- content -->
<section class="page_update">
<h3 class="title">메뉴 수정</h3>
<div class="content_update">
	<form name="menu_update" action="#" method="get" class="menu_update">
		<table class="menu_update_table">
			<tr>
				<th>이름</th>
				<td><input type="text" name="p_name" id="p_name" value="<%=vo.getPname()%>"></td>
			</tr>
			<tr>
				<th>설명</th>
				<td><input type="text" name="p_text" id="p_text" value="<%=vo.getIntro()%>"></td>
			</tr>
			<tr>
				<th>추천 플레이버</th>
				<td>
					<select id="p_flavor" name="p_flavor">
						<option value="choice">선택</option>
						<%for(MenuVO a_vo : list){ %>
						<option value="<%=a_vo.getPname()%>"><%=a_vo.getPname() %></option>
						<%} %>
					</select>
							
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<div class="selected_div">
					<%
					if(vo.getRec_flavor()!=null){
					for(String r_flavor:vo.getRec_flavor()){ %>
						<span><%= r_flavor%><button class="delete">&times;</button></span>
						<%}
					}%>
					</div>
				</td>
			</tr>
			<tr>
				<th>해쉬태그</th>
				<td><input type="text" name="p_hashtag" id="p_hashtag" value="">
				<input type="button" name = "btn_flavor" id="btn_add" value="등록">
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<div class="selected_div">
						<span>#초콜릿<button class="delete">&times;</button></span>
						<span>#초코볼<button class="delete">&times;</button></span>
						<span>#엄마는외계인<button class="delete">&times;</button></span>
					</div>
				</td>
			</tr>
			<tr>
				<th>메뉴 사진</th>
				<td><input type="file" name="p_image" id="p_image"></td>
			</tr>
			<tr>
				<th class="th_nutrient">영양정보</th>
				<td>
					<table class="update_nutrient">
						<tr>
							<th>1회 제공량(g)</th>
							<td><input type="text" name="n_amount" id="n_amount" value="115"></td>
							<th>열량(kcal)</th>
							<td><input type="text" name="n_kcal" id="n_kcal" value="296"></td>
						</tr>
						<tr>
							<th>나트륨(mg)</th>
							<td><input type="text" name="n_natrium" id="n_natrium" value="114"></td>
							<th>당류(g)</th>
							<td><input type="text" name="n_sugar" id="n_sugar" value="23"></td>
						</tr>
						<tr>
							<th>포화지방(g)</th>
							<td><input type="text" name="n_fat" id="n_fat" value="11"></td>
							<th>단백질(g)</th>
							<td><input type="text" name="n_protein" id="n_protein" value="5"></td>
						</tr>
						<tr>
							<th>카페인(mg)</th>
							<td colspan=2><input type="text" name="n_caffeine" id="n_caffeine" value="0"></td>
						</tr>
						<tr>
							<th>알레르기 성분</th>
							<td class="td_allergy" colspan=3>
								<input type="checkbox" id="allergy" name="allergy1" value="계란">
								<label for="allergy">계란</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy2" value="대두" checked="checked">
								<label for="allergy">대두</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy3" value="돼지고기">
								<label for="allergy">돼지고기</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy4" value="땅콩">
								<label for="allergy">땅콩</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy5" value="밀" checked="checked">
								<label for="allergy">밀</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy6" value="복숭아">
								<label for="allergy">복숭아</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy7" value="우유" checked="checked">
								<label for="allergy">우유</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy8" value="호두">
								<label for="allergy">호두</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy9" value="쇠고기">
								<label for="allergy">쇠고기</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy10" value="오징어">
								<label for="allergy">오징어</label><br>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div class="update_buttons">
			<button type="button" id="btn_final" name="btn_submit">수정</button>
			<button type="reset" id="btn_final">초기화</button>
		</div>
		
	</form>
</div>
</section>
</body>
</html>