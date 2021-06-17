<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.br31.dao.*, com.br31.vo.*, java.util.*, com.google.gson.*" %>
<% 
	String pname = request.getParameter("pname");
	
	MenuDAO dao = new MenuDAO();
	MenuVO vo = dao.getAdminNutrientContent(pname);
	
	JsonObject jdata = new JsonObject();
	Gson gson = new Gson();
	
	jdata.addProperty("pname", vo.getPname());
	jdata.addProperty("one_amount", vo.getOne_amount());
	jdata.addProperty("kcal", vo.getKcal());
	jdata.addProperty("natrium",vo.getNatrium());
	jdata.addProperty("sugar", vo.getSugar());
	jdata.addProperty("fat", vo.getFat());
	jdata.addProperty("protein", vo.getProtein());
	jdata.addProperty("caffeine", vo.getCaffeine());
	
	String al_text = "";
	for(int i=0;i<vo.getAllergy().length;i++) {
		if(i==vo.getAllergy().length-1) {
			al_text += vo.getAllergy()[i];
		}else {
			al_text += vo.getAllergy()[i]+",";
		}
	}
	
	jdata.addProperty("allergy", al_text);
	
	out.write(gson.toJson(jdata));
%>