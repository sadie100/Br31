package com.br31.dao;

import java.util.ArrayList;

import com.br31.vo.MenuVO;

public class MenuDAO extends DBConn{
	//hashtag, ��õ�÷��̹� �� String�� �迭�� ���ϴ� �޼ҵ�
		public String[] getStringList(String text) {
			if(text.contains(",")) {
				String[] list = text.split(",");
				return list;
			}else {
				String[] list = {text};
				return list;
			}
		}
		
	//�迭�� String���� �и��ϴ� �޼ҵ�
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
	//Select --> ���̽�ũ�� �޴� ����Ʈ
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
		
	//Select --> admin�� ���̽�ũ�� �޴� ����Ʈ
	
	public ArrayList<MenuVO> getAdminList(String category){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = " SELECT * FROM BR31_MENU WHERE CATEGORY=? ";
		
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, category.toUpperCase());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				vo.setCategory(rs.getString(1));
				vo.setOrder_num(rs.getInt(2));
				vo.setPname(rs.getString(3));
				vo.setEng_pname(rs.getString(4));
				vo.setIntro(rs.getString(5));
				if(rs.getString(6)!=null){
					vo.setRec_flavor(getStringList(rs.getString(6)));
				}
				vo.setMonthly_rank(rs.getInt(7));
				if(rs.getString(8)!=null) {
					vo.setHashtag(getStringList(rs.getString(8)));
				}
				vo.setPfile(rs.getString(9));
				vo.setPsfile(rs.getString(10));
				vo.setOne_amount(rs.getString(11));
				vo.setKcal(rs.getString(12));
				vo.setNatrium(rs.getInt(13));
				vo.setSugar(rs.getInt(14));
				vo.setFat(rs.getInt(15));
				vo.setProtein(rs.getInt(16));
				vo.setCaffeine(rs.getInt(17));
				if(rs.getString(18)!=null) {
					vo.setAllergy(getStringList(rs.getString(18)));
				}
				vo.setSet_check(rs.getInt(19));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
	// admin update ---> ���� ó��(���ο� ���� ����)
	public boolean getUpdateResult(MenuVO vo) {
		boolean result = false;
		String sql = " update br31_menu set intro = ?, rec_flavor = ?, "
				+ " hashtag = ?, pfile = ?, psfile = ?, one_amount = ?, "
				+ " kcal = ?, natrium = ?, sugar = ?, fat = ?, protein = ?, "
				+ " caffeine = ?, allergy = ? ";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getIntro());
			pstmt.setString(2, getString(vo.getRec_flavor()));
			pstmt.setString(3, getString(vo.getHashtag()));
			pstmt.setString(4, vo.getPfile());
			pstmt.setString(5, vo.getPsfile());
			pstmt.setString(6, vo.getOne_amount());
			pstmt.setString(7, vo.getKcal());
			pstmt.setInt(8, vo.getNatrium());
			pstmt.setInt(9, vo.getSugar());
			pstmt.setInt(10, vo.getFat());
			pstmt.setInt(11, vo.getProtein());
			pstmt.setInt(12, vo.getCaffeine());
			pstmt.setString(13, getString(vo.getAllergy()));
			
			int a = pstmt.executeUpdate();
			if(a!=0) result=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;		
	}
	// admin update ---> ���� ó��(���� ����)
	public boolean getUpdateResultNofile(MenuVO vo) {
		boolean result = false;
		String sql = " update br31_menu set intro = ?, rec_flavor = ?, "
				+ " hashtag = ?, one_amount = ?, "
				+ " kcal = ?, natrium = ?, sugar = ?, fat = ?, protein = ?, "
				+ " caffeine = ?, allergy = ? ";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getIntro());
			pstmt.setString(2, getString(vo.getRec_flavor()));
			pstmt.setString(3, getString(vo.getHashtag()));
			pstmt.setString(4, vo.getOne_amount());
			pstmt.setString(5, vo.getKcal());
			pstmt.setInt(6, vo.getNatrium());
			pstmt.setInt(7, vo.getSugar());
			pstmt.setInt(8, vo.getFat());
			pstmt.setInt(9, vo.getProtein());
			pstmt.setInt(10, vo.getCaffeine());
			pstmt.setString(11, getString(vo.getAllergy()));
			
			int a = pstmt.executeUpdate();
			if(a!=0) result=true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;		
	}
	//admin delete ---> admin ����
	public boolean getDeleteResult(String pname) {
		boolean result = false;
		String sql = " delete from br31_menu where pname = ? ";
		
		getPreparedStatement(sql);
		
		try {
		pstmt.setString(1, pname);
		int a = pstmt.executeUpdate();
		if(a!=0) {
			result = true;
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//select ---> admin���� ������ư�� ������ �� �ҷ����� Ư�� content
	public MenuVO getAdminContent(String pname){
		MenuVO vo = new MenuVO();
		String sql = " SELECT * FROM BR31_MENU WHERE PNAME = ? ";
		
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, pname);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setCategory(rs.getString(1));
				vo.setOrder_num(rs.getInt(2));
				vo.setPname(rs.getString(3));
				vo.setEng_pname(rs.getString(4));
				vo.setIntro(rs.getString(5));
				if(rs.getString(6)!=null){
					vo.setRec_flavor(getStringList(rs.getString(6)));
				}
				vo.setMonthly_rank(rs.getInt(7));
				if(rs.getString(8)!=null) {
					vo.setHashtag(getStringList(rs.getString(8)));
				}
				vo.setPfile(rs.getString(9));
				vo.setPsfile(rs.getString(10));
				vo.setOne_amount(rs.getString(11));
				vo.setKcal(rs.getString(12));
				vo.setNatrium(rs.getInt(13));
				vo.setSugar(rs.getInt(14));
				vo.setFat(rs.getInt(15));
				vo.setProtein(rs.getInt(16));
				vo.setCaffeine(rs.getInt(17));
				if(rs.getString(18)!=null) {
					vo.setAllergy(getStringList(rs.getString(18)));
				}
				vo.setSet_check(rs.getInt(19));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return vo;
	}
	
	//Select --> admin�� Ư�� ���̽�ũ�� nutrient ��ȸ
	public MenuVO getAdminNutrientContent(String pname) {
		MenuVO vo = new MenuVO();
		String sql = " select pname, one_amount, kcal, natrium, sugar, "
				+ "fat, protein, caffeine, allergy, set_check from br31_menu "
				+ " where pname = ?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, pname);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setPname(rs.getString(1));
				vo.setOne_amount(rs.getString(2));
				vo.setKcal(rs.getString(3));
				vo.setNatrium(rs.getInt(4));
				vo.setSugar(rs.getInt(5));
				vo.setFat(rs.getInt(6));
				vo.setProtein(rs.getInt(7));
				vo.setCaffeine(rs.getInt(8));
				if(rs.getString(9)!=null) {
					vo.setAllergy(getStringList(rs.getString(9)));
				}
				vo.setSet_check(rs.getInt(10));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
		
	}
	
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
	//Select ---> menu ��ȸ - ���̽�ũ��
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
	//Select ---> �������� ��ȸ - �⺻ȭ��(��ü���)
	public ArrayList<MenuVO> getAllNutrientsList(String category){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = " select pname, one_amount, kcal, natrium, sugar, fat, protein, caffeine, allergy, set_check " + 
				" from br31_menu order by pname ";
		
		if(category.equals("icecream")) {
			sql = " select pname, one_amount, kcal, natrium, sugar, fat, protein, caffeine, allergy, set_check " + 
					" from br31_menu where category = 'ICECREAM' order by pname ";
		}else if(category.equals("coffee")) {
			sql = " select pname, one_amount, kcal, natrium, sugar, fat, protein, caffeine, allergy, set_check " + 
					" from br31_menu where category = 'COFFEE' order by pname ";
		}
		
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				
				vo.setPname(rs.getString(1));
				
				if(rs.getString(2)!=null) {		//1ȸ�������� null�� �ƴҶ�
					vo.setOne_amount(rs.getString(2));
				}
				
				if(rs.getString(3)!=null) {		//������ null�� �ƴ� ��
					vo.setKcal(rs.getString(3));
				}

				vo.setNatrium(rs.getInt(4));
				vo.setSugar(rs.getInt(5));
				vo.setFat(rs.getInt(6));
				vo.setProtein(rs.getInt(7));
				vo.setCaffeine(rs.getInt(8));
				
				if(rs.getString(9)!=null) {		//�˷����� null�� �ƴ� ��
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
	
	//select --> ���缺�� ��ȸ - �˻���� ���
	public ArrayList<MenuVO> getNutrientSearchResult(String category, String pname, String nutrient, String sorting, String[] allergies){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = " select pname, one_amount, kcal, natrium, sugar, fat, protein, caffeine, allergy, set_check " + 
				" from br31_menu ";
		int w_check = 0;	//where�� üũ ����
		if(!category.equals("all")) {
			sql += " where category = " + category.toUpperCase();
			w_check = 1;
		}
		if(!pname.equals("")) {
			if(w_check==0) {
				sql += " where pname like '%" +pname +"%'";
				w_check = 1;
			}else {
				sql += " and pname like '%" +pname +"%'";
			}
 		}
		if(allergies!=null) {
			//String allergy = getString(allergies);
			if(w_check==0) {	//where���� �ȵ��� ��
				for(int i=0;i<allergies.length;i++) {
					if(i==0) {
						sql += " where allergy like '%"+allergies[i]+"%'";
					}else {
						sql += " and allergy like '%"+allergies[i]+"%'";
					}
				}
				w_check=1;
			}else {	//where���� �̹� ���� ��
				for(int i=0;i<allergies.length;i++) {
						sql += " and allergy like '%"+allergies[i]+"%'";
				}
			}
		}
		if(!sorting.equals("��ü")) {	//���缺��, ���ļ��� �Ѵ� ����������
			if(w_check==0) {	//where ���� �ȵ��� ��
				if(sorting.equals("������")) {
					sql += " where set_check=0 order by to_number("+nutrient+") desc";
				}else {	//������
					sql += " where set_check=0 order by to_number("+nutrient+")";
				}
				w_check=1;
			}else {		//where���� �̹� ���� ��
				if(sorting.equals("������")) {
					sql += " and set_check=0 order by to_number("+nutrient+") desc";
				}else {	//������
					sql += " and set_check=0 order by to_number("+nutrient+")";
				}
			}
		}else if(sorting.equals("��ü") && !nutrient.equals("��ü")){	//���缺�и� ����������(�⺻����: ��������)
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
	
	//select ---> �޴� ��ȸ �κ��� �˻� ��� ���
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