package com.br31.dao;

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
}
