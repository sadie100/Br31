package com.br31.dao;

import java.util.ArrayList;

import com.br31.vo.MenuVO;

public class MypageDAO extends DBConn{
	MenuVO mvo = new MenuVO();
	
	public int getmfUpdateResult(String id,String pname) {
		int result = 0;
		
		String sql = "insert into br31_f_flavor values "
				+ " ( seq_br31_f_flavor_num.nextval, ?, ? ) ";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pname);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return result;
	}
	
	public int getmfDeleteResult(String id, String pname) {
		int result = 0;
		
		
		String sql = "delete from br31_f_flavor where id = ? and pname = ? ";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pname);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public ArrayList<MenuVO> getFlavorList(String id){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		
		String sql = "SELECT PNAME, PSFILE FROM BR31_MENU WHERE " + 
				" PNAME IN (SELECT PNAME FROM BR31_F_FLAVOR WHERE ID = ?) ";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				
				vo.setPname(rs.getString(1));
				vo.setPsfile(rs.getString(2));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int getStarCount(String id, String pname) {
		int result = 0;
		
		String sql = "select count(*) from br31_f_flavor where id = ? and pname = ?";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pname);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
