<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.dao.*,com.br31.vo.*, java.util.*,java.io.*" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%> 


<%
	String category = request.getParameter("category");
	String status = request.getParameter("status");
	
	
	//파일 관련 코드
	String savePath = request.getServletContext().getRealPath("/menu/images");

	int sizeLimit=1024*1024*15;
	
	MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());

	//화면 ui 이름 : multi.getOriginalFileName("pfile");
	//폴더 저장 이름 : multi.getFilesystemName("pfile");
	
	MenuVO vo = new MenuVO();
	MenuDAO dao = new MenuDAO();
	boolean result = false;
	
	vo.setCategory(category);
	vo.setPname(multi.getParameter("pname"));
	vo.setEng_pname(multi.getParameter("eng_pname"));
	if(multi.getParameterValues("rec_flavor")!=null){
		vo.setRec_flavor(multi.getParameterValues("rec_flavor"));
	}else{
		vo.setRec_flavor("");
	}
	if(multi.getParameterValues("hashtag")!=null){
		vo.setHashtag(multi.getParameterValues("hashtag"));
	}else{
		vo.setHashtag("");
	}
	vo.setOrder_type(multi.getParameter("order_type"));
	vo.setIntro(multi.getParameter("intro"));
	vo.setOne_amount(multi.getParameter("one_amount"));
	vo.setKcal(multi.getParameter("kcal"));
	vo.setNatrium(Integer.parseInt(multi.getParameter("natrium")));
	vo.setSugar(Integer.parseInt(multi.getParameter("sugar")));
	vo.setFat(Integer.parseInt(multi.getParameter("fat")));
	vo.setProtein(Integer.parseInt(multi.getParameter("protein")));
	vo.setCaffeine(Integer.parseInt(multi.getParameter("caffeine")));
	if(multi.getParameterValues("allergy")!=null){
		vo.setAllergy(multi.getParameterValues("allergy"));
	}else{
		vo.setAllergy("");
	}
	if(multi.getOriginalFileName("pfile")!=null){	//파일바꿨을때
		vo.setPfile(multi.getOriginalFileName("pfile"));
		vo.setPsfile(multi.getFilesystemName("pfile"));
		result = dao.getUpdateResult(vo);
			
		if(result){
		 	String old_file_path = savePath + "/" + multi.getParameter("psfile_old");
		 	File old_file = new File(old_file_path); 
		 	if(old_file.exists()){	
		 		if(old_file.delete()){	
		 		}
		 	}
		}
		
	 }else{
		result = dao.getUpdateResultNofile(vo);
	 }
	dao.close();
	 if(result){
		status="after";
		response.sendRedirect("admin_menu_update.jsp?category="+category+"&status="+status);
	 }else if(result==false){
		status="after";
		response.sendRedirect("admin_menu_update.jsp?category="+category+"&status="+status); 
	 }
	
	
%>