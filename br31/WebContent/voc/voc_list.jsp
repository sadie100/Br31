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
	
	ArrayList<VocVO> list = dao.getList(startCount, endCount);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 문의함</title>
<link rel="stylesheet" href="http://localhost:9000/br31/css/cs.css">
<link rel="stylesheet" href="http://localhost:9000/br31/css/am-pagination.css">
<script src="http://localhost:9000/br31/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/br31/js/am-pagination.js"></script>
<script>
	$(document).ready(function(){
		
		var pager = jQuery("#ampaginationsm").pagination({
			
		    maxSize: 10,	    		// max page size
		    totals: <%=dbCount%>,	// total pages	
		    page: <%=rpage%>,		// initial page		
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
	           $(location).attr("href", "http://localhost:9000/br31/voc/voc_list.jsp?page="+e.page);         
	    });
		
 	});
</script> 
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="cs_header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="cs_content">
		<section class="voc_list">
			<h3>고객센터 내 문의함</h3>
			<div class="voc_list_content">
				<div class="list">
					<table>
						<tr>
							<th>번호</th>
							<th>상담유형</th>
							<th>내용유형</th>
							<th>제목</th>
							<th>접수일</th>
							<th>상태</th>
						</tr>
						<% for(VocVO vo : list) { %>
						<tr>
							<td><%= vo.getRno() %></td>
							<td><%= vo.getQtype() %></td>
							<td><%= vo.getCtype() %></td>
							<td><a href="http://localhost:9000/br31/voc/voc_content.jsp?vid=<%=vo.getVid()%>"><%= vo.getTitle() %></a></td>
							<td><%= vo.getVdate() %></td>
							<td><%= vo.getStatus() %></td>
						</tr>
						<% } %>
					</table>
				</div>
				<div id="ampaginationsm"></div>
			</div>
		</section>	
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>