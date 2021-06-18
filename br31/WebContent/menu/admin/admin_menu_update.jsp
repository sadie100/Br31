<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import = "com.br31.dao.*,com.br31.vo.*,java.util.*,java.net.URLEncoder" %>
 <%
 	String category = request.getParameter("category");
 	MenuDAO dao = new MenuDAO();
	//MenuVO vo = dao.getAdminContent(pname);
	ArrayList<MenuVO> list = dao.getAdminList(category);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/br31/menu/css/admin_menu.css">
<script src="http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script>
	
	function form_empty(){						//리셋버튼 누를때 함수
		$("#intro").val("");	//설명
		$("#selected_rec_flavor").empty();
		$("#hashtag").val("");	//해쉬태그
		$("#selected_hashtag").rmove();
		$("#frame").remove();
		var output = "<span id='frame'>선택된 파일 없음</span>";
		$("#p_image").after(output);
		$("#n_amount").val("");
		$("#n_kcal").val("");
		$("#n_natrium").val("");
		$("#n_sugar").val("");
		$("#n_fat").val("");
		$("#n_protein").val("");
		$("#n_caffeine").val("");
		$("input[type=checkbox]").removeAttr("checked");
	}

	function ajax_content(pname){						//ajax
		$.ajax({
			url:"admin_menu_update_ajax.jsp?pname="+pname,
			success:function(result){
				//실행결과에 따른 처리.
				var jdata = JSON.parse(result);
				$("#eng_pname").val(jdata.eng_pname);	//설명
				$("#intro").val(jdata.intro);	//설명
				$("#selected_rec_flavor").empty();	//추천플레이버
				var output = "";
				if(jdata.rec_flavor!=""){
					var list_r = jdata.rec_flavor.split(",");
					for(var i=0;i<list_r.length;i++){
						output += "<span>" + list_r[i] + "<button type='button' class='delete'>&times;</button></span>";
					}
				}
				$("#selected_rec_flavor").append(output);
				
				$("#hashtag").val("");	//해쉬태그
				$("#selected_hashtag").empty();
				output = "";
				if(jdata.hashtag!=null){
					var list_h = jdata.hashtag.split(",");
					for(var i=0;i<list_h.length;i++){
						output += "<span><label class='hashtag' name='hashtag'>" + list_h[i] + "<button type='button' class='delete'>&times;</button><label></span>";
					}
				}
				$("#selected_hashtag").append(output);
				
				$("#frame").remove();
				output="";	//메뉴 사진
				if(jdata.pfile!=null){
					output += "<span id='frame'>"+jdata.pfile+"</span>";
				}else{
					output += "<span id='frame'>선택된 파일 없음</span>";
				}
				$("#p_image").after(output);
				
				$("#bsfile_old").val(jdata.psfile)
				$("#n_amount").val(jdata.one_amount);
				$("#n_kcal").val(jdata.kcal);
				$("#n_natrium").val(jdata.natrium);
				$("#n_sugar").val(jdata.sugar);
				$("#n_fat").val(jdata.fat);
				$("#n_protein").val(jdata.protein);
				$("#n_caffeine").val(jdata.caffeine);
				
				$("input[type=checkbox]").removeAttr("checked");
				if(jdata.allergy!=null){
					var list_a = jdata.allergy.split(",");
					for(var i=0;i<list_a.length;i++){
						$("input[value="+list_a[i]+"]").attr("checked","checked");
					}
				}
				
			}//success
		});//ajax
	}//ajax_list function
	
	var flavor_list = [];
	
	$(document).ready(function(){							//document ready
		$("#pname").change(function(){
			var pname = $("#pname").val();
			if(pname!="선택"){		//원래 데이터로 돌려놓음
				ajax_content(pname);
			}else{		//'선택'일 경우 다 지움
				form_empty(num);
			}
		});
		var btnlist_rec = [];
		var inputlist_rec = [];
		
		$("#rec_flavor_list").change(function(){		//추천 플레이버 선택시
			var flavor = $("#rec_flavor_list").val();
			flavor_list.push(flavor);
			if(flavor!="선택"){
				if(flavor==$("#pname").val()){
					alert("추천 플레이버는 다른 맛만 선택할 수 있습니다.")
				}else{
					var output = "<span>"+flavor+"<button type='button' class='delete' id='delete_rec' name='delete_rec'>&times;</button></span>";
					output += "<input type='hidden' name='rec_flavor' id='rec_flavor' value="+flavor+">";
					
					$("#selected_rec_flavor").append(output);
					
						/*
					$("#selected_rec_flavor").find("button").click(function(){
						
						p = p.replace('&times;',"");
						console.log(p);
						$("input[name='rec_flavor'][value="+p+"]").remove();
						$(this).parent().remove();
						console.log("됨");
					});
						*/
				$("button[name=delete_rec]").click(function(){
					var btns_rec = document.getElementsByName("delete_rec");
					var inputs_rec = document.getElementsByName("rec_flavor");
					var txlist_rec = [];
					//var p = $(btns_rec).eq(0).parent().text();
					//console.log(p);
					for(var i=0;i<btns_rec.length;i++){
						txlist_rec.push($(btns_rec).eq(i).parent().text());
					}
					 
					var now = $(this).parent().text()
					var ind = txlist_rec.indexOf(now);
					$(btns_rec).eq(ind).parent().remove();
					/*for(var i=ind;i<btns_rec.length;i++){
						if(i<btns_rec.length-1){
							$(btns_rec).eq(i).parent() =  $(btns_rec).eq(i+1).parent();
						}else{
							$(btns_rec).eq(btns_rec.length-1).parent().remove();
						}
					}
					*/
					$(inputs_rec).eq(ind).remove();
					/*for(var i=ind;i<inputs_rec.length;i++){
						if(i<inputs_rec.length-1){
							$(inputs_rec).eq(i).parent() =  $(inputs_rec).eq(i+1).parent();
						}else{
							$(inputs_rec).eq(inputs_rec.length-1).parent().remove();
						}
					}
					*/
				});
				}
			}
		});
		
		
		
		
		$("input[type=file]").on('change',function(){				//파일 선택시
			if(window.FileReader){
				var filename = $(this)[0].files[0].name;
				$("#frame").text("").text(filename);
			}
		});
		
		$("#btn_reset").click(function(){						//리셋버튼누를때
			var pname = $("#pname option:selected").val();
			if(pname!="선택"){
				ajax_content(pname);
			}else{
				form_empty();
			}
		});
		
		$("#btn_update").click(function(){						//수정버튼누를때
			if($("#pname option:selected").val()=="선택"){
				alert("수정할 메뉴를 선택해 주세요");
				$("#pname").focus();
				return false;
			}else if($("#intro").val()==""){
				alert("메뉴 설명을 입력해 주세요");
				$("#intro").focus();
				return false;
			}else if($("#frame").text()=="선택된 파일 없음"){
				alert("메뉴 사진을 등록해 주세요");
				return false;
			}else{
				var check = confirm("메뉴를 등록하시겠습니까?");
				if(check==true){
					menu_update.submit();
				}else{
					return false;
				}
			}
		});
	});//document.ready
	
</script>
</head>
<body>
<!-- content -->
<section class="page_update">
<h3 class="title">메뉴 수정</h3>
<div class="content_update">
	<form name="menu_update" action="admin_menu_update_process.jsp" method="post" class="menu_update" enctype="multipart/form-data">
	<input type="hidden" name="psfile_old" id="psfile_old">
		<table class="menu_update_table">
			<tr>
				<th>이름</th>
				<td>
					<select id="pname" name="pname">
						<option value="선택">선택</option>
						<%for(MenuVO a_vo : list){ %>
						<option value="<%=a_vo.getPname()%>"><%=a_vo.getPname() %></option>
						<%} %>
					</select>
				</td>
			</tr>
			<tr>
				<th>영어 표기</th>
				<td><input type="text" name="eng_pname" id="eng_pname" value=""></td>
			</tr>
			<tr>
				<th>설명</th>
				<td><input type="text" name="intro" id="intro" value=""></td>
			</tr>
			<tr>
				<th>추천 플레이버</th>
				<td>
					<select id="rec_flavor_list" name="rec_flavor_list">
						<option value="선택">선택</option>
						<%for(MenuVO a_vo : list){ %>
						<option value="<%=a_vo.getPname()%>"><%=a_vo.getPname() %></option>
						<%} %>
					</select>
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<div class="selected_div" id="selected_rec_flavor">
					</div>
				</td>
			</tr>
			<tr>
				<th>해쉬태그</th>
				<td><input type="text" name="hashtag" id="hashtag" value="">
				<input type="button" name = "btn_hash_add" id="btn_hash_add" value="등록">
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<div class="selected_div" id="selected_hashtag">
					</div>
				</td>
			</tr>
			<tr>
				<th>메뉴 사진</th>
				<td><input type="file" name="pfile" id="p_image"></td>
			</tr>
			<tr>
				<th class="th_nutrient">영양정보</th>
				<td>
					<table class="update_nutrient">
						<tr>
							<th>1회 제공량(g)</th>
							<td><input type="text" name="one_amount" id="n_amount"></td>
							<th>열량(kcal)</th>
							<td><input type="text" name="kcal" id="n_kcal"></td>
						</tr>
						<tr>
							<th>나트륨(mg)</th>
							<td><input type="text" name="natrium" id="n_natrium"></td>
							<th>당류(g)</th>
							<td><input type="text" name="sugar" id="n_sugar"></td>
						</tr>
						<tr>
							<th>포화지방(g)</th>
							<td><input type="text" name="fat" id="n_fat"></td>
							<th>단백질(g)</th>
							<td><input type="text" name="protein" id="n_protein"></td>
						</tr>
						<tr>
							<th>카페인(mg)</th>
							<td colspan=2><input type="text" name="caffeine" id="n_caffeine"></td>
						</tr>
						<tr>
							<th>알레르기 성분</th>
							<td class="td_allergy" colspan=3>
								<input type="checkbox" id="allergy" name="allergy" value="계란">
								<label for="allergy">계란</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy" value="대두">
								<label for="allergy">대두</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy" value="돼지고기">
								<label for="allergy">돼지고기</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy" value="땅콩">
								<label for="allergy">땅콩</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy" value="밀">
								<label for="allergy">밀</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy" value="복숭아">
								<label for="allergy">복숭아</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy" value="우유">
								<label for="allergy">우유</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy" value="호두">
								<label for="allergy">호두</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy" value="쇠고기">
								<label for="allergy">쇠고기</label>&nbsp;
								<input type="checkbox" id="allergy" name="allergy" value="오징어">
								<label for="allergy">오징어</label><br>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div class="update_buttons">
			<button type="button" id="btn_update" name="btn_submit">수정</button>
			<button type="button" id="btn_reset">초기화</button>
		</div>
		
	</form>
</div>
</section>
</body>
</html>