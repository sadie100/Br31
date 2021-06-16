<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import = "com.br31.dao.*,com.br31.vo.*, java.net.URLEncoder" %>
<%
	String status = request.getParameter("status");
	String[] menu_check = request.getParameterValues("menu_check");
	System.out.println(menu_check[0]);
	
	
	if(status.equals("update")){	//수정일 때
		
		if(menu_check!=null){
			response.sendRedirect("admin_menu_update.jsp?pname="+menu_check[0]+"&status="+status);
		}
	}else if(status.equals("delete")){	//삭제일 때
		
	}
%>