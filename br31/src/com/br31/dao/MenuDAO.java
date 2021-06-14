package com.br31.dao;

import java.util.ArrayList;

import com.br31.vo.MenuVO;

public class MenuDAO extends DBConn{
	//hashtag, 추천플레이버 등 String을 배열로 합하는 메소드
		public String[] getStringList(String text) {
			if(text.contains(",")) {
				String[] list = text.split(",");
				return list;
			}else {
				String[] list = {text};
				return list;
			}
		}
		
	//배열을 String으로 분리하는 메소드
		public String getString(String[] list) {
			String text = "";
			for(int i=0;i<list.length;i++) {
				if(i==list.length-1) {
					text += list[i];
				}else {
					text += list[i]+",";
				}
			}
			return text;
		}
	//Select --> 아이스크림 메뉴 리스트
		public ArrayList<MenuVO> getMenuIcecreamList(String status) {
			ArrayList<MenuVO> list = new ArrayList<MenuVO>();
			String sql = "";
			
			if(status.equals("icecream")) {
				sql = " SELECT PNAME, HASHTAG, PSFILE FROM BR31_MENU WHERE CATEGORY='ICECREAM' ORDER BY ORDER_NUM ";
			}else {
				sql = " SELECT PNAME, HASHTAG, PSFILE FROM BR31_MENU WHERE CATEGORY='COFFEE' ORDER BY ORDER_NUM ";
			}
			
			getPreparedStatement(sql);
			try {
				rs= pstmt.executeQuery();
				while(rs.next()) {
					MenuVO vo = new MenuVO();
					vo.setPname(rs.getString(1));
					if(rs.getString(2)!=null) {
						if(rs.getString(2).contains(",")) {
							String[] hashlist = rs.getString(2).split(",");
							vo.setHashtag(hashlist);
						}else {
							String[] hashlist = {rs.getString(2)};
							vo.setHashtag(hashlist);
						}
					}
					vo.setPsfile(rs.getString(3));
					list.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			close();
			return list;
	}
		
	//Select --> admin의 아이스크림 메뉴 리스트
	/*
	public ArrayList<MenuVO> getAdminIcecreamList(){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = " SELECT * FROM BR31_MENU WHERE CATEGORY='ICECREAM' ";
		
		getPreparedStatement(sql);
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				vo.setCategory(rs.getString(1));
				vo.setPname(rs.getString(2));
				vo.setEng_pname(rs.getString(3));
				vo.setIntro(rs.getString(4));
				vo.setRec_flavor(rs.getString(5));
				vo.setMonthly_rank(rs.getInt(6));
				vo.setHashtag(rs.getString(7));
				vo.setPfile(rs.getString(8));
				vo.setPsfile(rs.getString(9));
				vo.setOne_amount(rs.getString(10));
				vo.setKcal(rs.getString(11));
				vo.setNatrium(rs.getInt(12));
				vo.setSugar(rs.getInt(13));
				vo.setFat(rs.getInt(14));
				vo.setProtein(rs.getInt(15));
				vo.setCaffeine(rs.getInt(16));
				vo.setAllergy(rs.getString(17));
				vo.setSet_check(rs.getInt(18));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
	*/
	//Select --> monthly best flavor
	public ArrayList<MenuVO> getMonthlyIcecreamList() {
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = " SELECT PNAME, PSFILE FROM BR31_MENU WHERE CATEGORY='ICECREAM' ORDER BY MONTHLY_RANK ";
		
		getPreparedStatement(sql);
		try {
			rs= pstmt.executeQuery();
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				vo.setPname(rs.getString(1));
				vo.setPsfile(rs.getString(2));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
	//Select ---> menu 조회 - 아이스크림
	public MenuVO getMenuIcecreamContent(String pname) {
		MenuVO vo = new MenuVO();
		String sql = " select pname, eng_pname, intro, rec_flavor, psfile from br31_menu where pname = ? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, pname);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				vo.setPname(rs.getString(1));
				if(rs.getString(2)!=null) {
					vo.setEng_pname(rs.getString(2));
				}
				vo.setIntro(rs.getString(3));
				if(rs.getString(4)!=null) {
					vo.setRec_flavor(getStringList(rs.getString(4)));
				}
				vo.setPsfile(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	//Select ---> 영양정보 조회 - 기본화면(전체출력)
	public ArrayList<MenuVO> getAllNutrientsList(){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = " select pname, one_amount, kcal, natrium, sugar, fat, protein, caffeine, allergy, set_check " + 
				" from br31_menu order by pname ";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				
				vo.setPname(rs.getString(1));
				
				if(rs.getString(2)!=null) {		//1회제공량이 null이 아닐때
					vo.setOne_amount(rs.getString(2));
				}
				
				if(rs.getString(3)!=null) {		//열량이 null이 아닐 때
					vo.setKcal(rs.getString(3));
				}

				vo.setNatrium(rs.getInt(4));
				vo.setSugar(rs.getInt(5));
				vo.setFat(rs.getInt(6));
				vo.setProtein(rs.getInt(7));
				vo.setCaffeine(rs.getInt(8));
				
				if(rs.getString(9)!=null) {		//알러지가 null이 아닐 때
					String[] alist = getStringList(rs.getString(9));
					vo.setAllergy(alist);
				}
				
				vo.setSet_check(rs.getInt(10));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
	
	//select --> 영양성분 조회 - 검색결과 출력
	public ArrayList<MenuVO> getNutrientSearchResult(String pname, String nutrient, String sorting, String[] allergies){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = " select pname, one_amount, kcal, natrium, sugar, fat, protein, caffeine, allergy, set_check " + 
				" from br31_menu ";
		int w_check = 0;	//where절 체크 변수
		if(!pname.equals("")) {
			sql += " where pname like '%" +pname +"%'";
			w_check = 1;
 		}
		if(allergies!=null) {
			//String allergy = getString(allergies);
			if(w_check==0) {	//where절이 안들어갔을 때
				for(int i=0;i<allergies.length;i++) {
					if(i==0) {
						sql += " where allergy like '%"+allergies[i]+"%'";
					}else {
						sql += " and allergy like '%"+allergies[i]+"%'";
					}
				}
				w_check=1;
			}else {	//where절이 이미 있을 때
				for(int i=0;i<allergies.length;i++) {
						sql += " and allergy like '%"+allergies[i]+"%'";
				}
			}
		}
		if(!sorting.equals("전체")) {	//영양성분, 정렬순서 둘다 선택했을때
			if(w_check==0) {	//where 절이 안들어갔을 떄
				if(sorting.equals("높은순")) {
					sql += " where set_check=0 order by to_number("+nutrient+") desc";
				}else {	//낮은순
					sql += " where set_check=0 order by to_number("+nutrient+")";
				}
				w_check=1;
			}else {		//where절이 이미 있을 때
				if(sorting.equals("높은순")) {
					sql += " and set_check=0 order by to_number("+nutrient+") desc";
				}else {	//낮은순
					sql += " and set_check=0 order by to_number("+nutrient+")";
				}
			}
		}else if(sorting.equals("전체") && !nutrient.equals("전체")){	//영양성분만 선택했을때(기본정렬: 오름차순)
			if(w_check==0) {
				sql += " where set_check=0 order by to_number("+nutrient+")";
				w_check=1;
			}else {
				sql += " and set_check=0 order by to_number("+nutrient+")";
			}
		}
		
		try {
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				vo.setPname(rs.getString(1));
				
				if(rs.getString(2)!=null) {
					vo.setOne_amount(rs.getString(2));
				}
				
				if(rs.getString(3)!=null) {
					vo.setKcal(rs.getString(3));
				}

				vo.setNatrium(rs.getInt(4));
				vo.setSugar(rs.getInt(5));
				vo.setFat(rs.getInt(6));
				vo.setProtein(rs.getInt(7));
				vo.setCaffeine(rs.getInt(8));
				
				if(rs.getString(9)!=null) {
					String[] alist = getStringList(rs.getString(9));
					vo.setAllergy(alist);
				}
				
				vo.setSet_check(rs.getInt(10));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
	
	//select ---> 메뉴 조회 부분의 검색 결과 출력
	public ArrayList<MenuVO> getSearchResult(String category, String pname, String hashtag, String[] allergies){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = " select pname, hashtag, psfile from br31_menu where category = '" + category + "'";
		
		if(!pname.equals("")) {
			sql += " and pname like '%" +pname +"%'";
		}
		if(!hashtag.equals("")) {
			if(hashtag.contains("#")) {
				sql += " and hashtag like '%" + hashtag + "%'";
			}else {
				sql += " and hashtag like '%#" + hashtag + "%'";
			}
		}
		if(allergies!=null) {
			for(int i=0;i<allergies.length;i++) {
				sql += " and allergy like '%"+allergies[i]+"%'";
			}
		}
		
		
		try {
			getStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				vo.setPname(rs.getString(1));
				vo.setHashtag(getStringList(rs.getString(2)));
				vo.setPsfile(rs.getString(3));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
}	//class