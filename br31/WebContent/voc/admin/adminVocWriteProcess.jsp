<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.br31.dao.VocDAO, com.br31.vo.VocVO, java.util.*" %>
<%
	String vid = request.getParameter("vid");
	String answer = request.getParameter("answer");

	VocDAO dao = new VocDAO();
	boolean result = dao.getInsertResult(vid, answer);
	
	if(result) {
		response.sendRedirect("admin_voc_content.jsp?vid="+vid);
	} else {
		response.sendRedirect("../errorPage.jsp");
	}
 /* 안녕하세요 고객님. 배스킨라빈스 CS팀 홍길동입니다.

배스킨라빈스 아이스크림 구매 일시, 구매 내역, 치아 파손 진단서와 사진을 첨부하시어 다시 문의주시기 바랍니다.
배스킨라빈스 대표번호 02) 333-3333 으로 전화하시면 빠른 상담 가능하십니다.

CS팀 홍길동 드림 */
%>

