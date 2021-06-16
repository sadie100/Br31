<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.br31.dao.VocDAO, com.br31.vo.VocVO, java.util.*" %>
<%
	VocDAO dao = new VocDAO();
	
	String rpage = request.getParameter("page");
	
	int startCount = 0;
	int endCount = 0;
	int pageSize = 10;	
	int reqPage = 1;	
	int pageCount = 1;	
	int dbCount = dao.execTotalCount();
	
	if(dbCount % pageSize == 0){
		pageCount = dbCount/pageSize;
	}else{
		pageCount = dbCount/pageSize + 1;
	}
	
	if(rpage != null){
		reqPage = Integer.parseInt(rpage);
		startCount = (reqPage - 1) * pageSize + 1;
		endCount = reqPage *pageSize;
	}else{
		startCount = 1;
		endCount = 10;
	}
	
	/* ArrayList<VocVO> list = dao.getList(startCount, endCount); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 문의함</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/cs.css"><link rel="stylesheet" href="http://localhost:9000/br31/css/cs.css">
<link rel="stylesheet" href="http://localhost:9000/br31/css/am-pagination.css">
<script src="http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/br31/js/am-pagination.js"></script>
<script>
$(document).ready(function() {
	
	get_list("상담유형", "내용유형", <%=startCount%>, <%=endCount%>);

	var pager = jQuery("#ampaginationsm").pagination({
		
	    maxSize: 10,	    		// max page size
	    totals: <%=dbCount%>,	// total pages	
	    page: <%=rpage%>,		/* // initial page	 */	
	    pageSize: 10,			// max number items per page
	
	    // custom labels		
	    lastText: "&raquo;&raquo;", 		
	    firstText: "&laquo;&laquo;",		
	    prevText: "&lt;",		
	    nextText: "&gt;",
			     
	    btnSize:"sm"	
	});
	
	jQuery("#ampaginationsm").on("am.pagination.change",function(e){
		   jQuery(".showlabelsm").text("The selected page no: "+e.page);
           $(location).attr("href", "http://localhost:9000/br31/voc/admin/admin_voc_list_select.jsp?page="+e.page);         
    });

	//유형 선택에 따라 리스트 가져오기
 	$("#sqtype, #sctype").on("change", function() {
		get_list($("#sqtype").val(), $("#sctype").val(), <%=startCount%>, <%=endCount%>);
	});
	
	function get_list(qtype, ctype, start, end) {
		$.ajax({
			url: "get_list.jsp?qtype="+ qtype + "&ctype=" + ctype + "&start=" + start + "&end=" + end,
			success: function(result) {
				var jdata = JSON.parse(result);
				var data = "";
				
				for(var i in jdata.jlist) {
					data += "<tr>";
					data += "<td>" + jdata.jlist[i].rno + "</td>";
					data += "<td>" + jdata.jlist[i].qtype + "</td>";
					data += "<td>" + jdata.jlist[i].ctype + "</td>";
					data += "<td><a href='" + jdata.jlist[i].link + "'>" + jdata.jlist[i].title + "</a></td>";
					data += "<td>" + jdata.jlist[i].vdate + "</td>";
					data += "<td>" + jdata.jlist[i].status + "</td>";
					data += "</tr>";
				}
				
				$("#column_name").siblings("tr").remove();
				$("#column_name").after(data);
				
			}//success
		});//ajax
		
	}//get_list
	
});//ready
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../admin_header.jsp"></jsp:include>
	<jsp:include page="admin_cs_header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="cs_content">
		<section class="voc_list">
			<h3>[관리자] 고객센터 문의 목록</h3>
			<div class="voc_list_content">
				<div class="voc_search_bar">
					<select id="sqtype">
						<option value="상담유형">상담유형</option>
						<option value="칭찬">칭찬</option>
						<option value="불만">불만</option>
						<option value="문의">문의</option>
						<option value="제안">제안</option>
						<option value="제보">제보</option>
					</select>
					<select id="sctype">
						<option value="내용유형">내용유형</option>
						<option value="제품">제품</option>
						<option value="인적서비스">인적서비스</option>
						<option value="점포서비스">점포서비스</option>
						<option value="이벤트">이벤트</option>
						<option value="HP카드">HP카드</option>
						<option value="모바일쿠폰">모바일쿠폰</option>
						<option value="기타">기타</option>
					</select>
					<input type="text" id="voc_search">
					<button type="button">검색</button>
				</div>
				<div class="list">
					<table>
						<tr id="column_name">
							<th>번호</th>
							<th>상담유형</th>
							<th>내용유형</th>
							<th>제목</th>
							<th>접수일</th>
							<th>상태</th>
						</tr>
<%-- 						<% for(VocVO vo : list) { %>
						<tr>
							<td><%= vo.getRno() %></td>
							<td><%= vo.getQtype() %></td>
							<td><%= vo.getCtype() %></td>
							<% if(vo.getStatus().equals("답변대기")) { %>
								<td><a href="http://localhost:9000/br31/voc/admin/admin_voc_write.jsp?vid=<%=vo.getVid()%>"><%= vo.getTitle() %></a></td>
							<% } else { %>
								<td><a href="http://localhost:9000/br31/voc/admin/admin_voc_content.jsp?vid=<%=vo.getVid()%>"><%= vo.getTitle() %></a></td>
							<% } %>
							<td><%= vo.getVdate() %></td>
							<td><%= vo.getStatus() %></td>
						</tr>
						<% } %> --%>
					</table>
				</div>
				<div id="ampaginationsm"></div>
			</div>
		</section>	
	</div>
	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>

</body>
</html>