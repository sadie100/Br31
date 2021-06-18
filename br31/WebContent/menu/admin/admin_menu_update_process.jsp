<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.dao.*,com.br31.vo.*, java.util.*,java.io.*" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%> 


<%
	//파일 관련 코드
	String savePath = request.getServletContext().getRealPath("/menu/images");

	int sizeLimit=1024*1024*15;
	
	MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());

	//화면 ui 이름 : multi.getOriginalFileName("pfile");
	//폴더 저장 이름 : multi.getFilesystemName("pfile");
	
	MenuVO vo = new MenuVO();
	MenuDAO dao = new MenuDAO();
	boolean result = false;
	
	vo.setIntro(multi.getParameter("intro"));
	vo.setRec_flavor(multi.getParameter("rec_flavor"));
	vo.setHashtag(multi.getParameter("hashtag"));
	vo.setOne_amount(multi.getParameter("one_amount"));
	vo.setKcal(multi.getParameter("kcal"));
	vo.setNatrium(Integer.parseInt(multi.getParameter("natrium")));
	vo.setSugar(Integer.parseInt(multi.getParameter("sugar")));
	vo.setFat(Integer.parseInt(multi.getParameter("fat")));
	vo.setProtein(Integer.parseInt(multi.getParameter("protein")));
	vo.setCaffeine(Integer.parseInt(multi.getParameter("caffeine")));
	vo.setAllergy(multi.getParameterValues("allergy"));
	if(multi.getOriginalFileName("pfile")!=null){
		vo.setPfile(multi.getOriginalFileName("pfile"));
		vo.setPsfile(multi.getFilesystemName("pfile"));
		result = dao.getUpdateResult(vo);
			
		if(result){
		 	String old_file_path = savePath + "/" + multi.getParameter("psfile_old");
		 	File old_file = new File(old_file_path); 
		 	if(old_file.exists()){	
		 		if(old_file.delete()){	
		 			System.out.println("파일 삭제 완료!!");
		 		}
		 	}
		}
		
	 }else{
		result = dao.getUpdateResultNofile(vo);
	 }
	
	 if(result){
		 response.sendRedirect("admin_menu_icecream.jsp");
	 }
	
	/*
	String status = request.getParameter("status");
	String[] menu_check = request.getParameterValues("menu_check");
	System.out.println(menu_check[0]);
	
	
	if(status.equals("update")){	//수정일 때
		
		if(menu_check!=null){
			response.sendRedirect("admin_menu_update.jsp?pname="+menu_check[0]+"&status="+status);
		}
	}else if(status.equals("delete")){	//삭제일 때
		
	}
	*/
	
	//삭제해도됨..
	
%>