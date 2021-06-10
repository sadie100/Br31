package com.br31.dao;

import java.util.ArrayList;

import com.br31.vo.MenuVO;

public class MenuDAO extends DBConn{
	//hashtag 분리 메소드
		public String[] getSplit(String text) {
			if(text.contains(",")) {
				String[] list = text.split(",");
				return list;
			}else {
				String[] list = {text};
				return list;
			}
		}
	//Select --> 아이스크림 메뉴 리스트
		public ArrayList<MenuVO> getMenuIcecreamList() {
			ArrayList<MenuVO> list = new ArrayList<MenuVO>();
			String sql = " SELECT PNAME, HASHTAG, PSFILE FROM BR31_MENU WHERE CATEGORY='ICECREAM' ORDER BY ORDER_NUM ";
			
			
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
					vo.setRec_flavor(getSplit(rs.getString(4)));
				}
				vo.setPsfile(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
}
