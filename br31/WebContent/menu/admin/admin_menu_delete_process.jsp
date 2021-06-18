<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.dao.*,com.br31.vo.*, java.util.*,java.io.*" %>


<%
String pname = request.getParameter("pname");
MenuDAO dao = new MenuDAO();
MenuVO vo = dao.getAdminContent(pname);
String psfile = vo.getPsfile();
boolean result = dao.getDeleteResult(pname);

if(result){
	if(psfile!=null){
		
	  String savePath = request.getServletContext().getRealPath("/menu/images");
	  
	  File file = new File(savePath+"/"+psfile);
	  if(file.exists()){
		  file.delete();
	  }
	}
 }


if(result){
	response.sendRedirect("admin_menu_icecream.jsp");
}

%>