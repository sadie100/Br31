<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.br31.dao.VocDAO, com.br31.vo.VocVO" %>

<%
	String vid = request.getParameter("vid");
	
	VocDAO dao = new VocDAO();
	boolean result = dao.getDeleteResult(vid);
	
	if(result) {
		out.write("delete");
	} else {
		out.write("fail");
	}

/* 	if(result) {
		response.sendRedirect("voc_list.jsp");
	} else {
		response.sendRedirect("../errorPage.jsp");
	} */

%>
