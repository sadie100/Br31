<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.br31.dao.MenuDAO, com.br31.vo.MenuVO, java.util.*"%>
<%
	String pname = request.getParameter("pname");
	String nutrient = request.getParameter("nutrient");
	String sorting = request.getParameter("sorting");
	String[] allergies = request.getParameterValues("allergy");
	
	MenuDAO dao = new MenuDAO();
	if(pname.equals("")&&nutrient.equals("전체")&&sorting.equals("전체")&&allergies==null){
		ArrayList<MenuVO> list = dao.getAllNutrientsList();
	}else{
		ArrayList<MenuVO> list = dao.getNutrientSearchResult(pname,nutrient,sorting,allergies);
	}
	
	String link = "nutrient_default.jsp?pname="+pname+"&nutrient="+nutrient+"&sorting="+sorting;
	if(allergies!=null){
		for(String al:allergies){
			link+="&allergy="+al;
		}
	}
	response.sendRedirect(link);
	
	//현재 코드 정상작동하면 지워도 될듯?
	
%>