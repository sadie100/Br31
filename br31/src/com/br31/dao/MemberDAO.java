package com.br31.dao;

import java.util.ArrayList;

import com.br31.vo.MemberVO;

public class MemberDAO extends DBConn{
	/*		ID      NOT NULL VARCHAR2(30)  
		PASS    NOT NULL VARCHAR2(30)  
		NAME    NOT NULL VARCHAR2(30)  
		GENDER  NOT NULL VARCHAR2(10)  
		BIRTH   NOT NULL VARCHAR2(30)  
		PH      NOT NULL VARCHAR2(30)  
		ADDR             VARCHAR2(50)  
		EMAIL   NOT NULL VARCHAR2(30)  
		CARD    NOT NULL VARCHAR2(50)  
		POINT            NUMBER(30)    
		M_FAVOR          VARCHAR2(200) 
		MDATE   NOT NULL DATE          
		CHOICE           NUMBER(1)     
		ADMIN            VARCHAR2(1)	*/  
	
	//Update -->���������� ȸ������ ����
	public boolean mypageUpdateResult(MemberVO vo){
		boolean result = false;
		String sql = "update br31_member set pass = ?, hp = ?, addr = ?, email = ? where id = ?";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getPass());
			pstmt.setString(2, vo.getHp());
			pstmt.setString(3, vo.getAddr());
			pstmt.setString(4, vo.getEmail());
			
			pstmt.setString(5, vo.getId());
			
			int value = pstmt.executeUpdate();
			
			if(value != 0 ){
				result = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		close();
		return result;
	}
	
	
	//Select -->ȸ�� ���������� ����
	public MemberVO getMypageData(String id) {
		MemberVO vo = new MemberVO();
		
		//ī���ȣ, �̸�, ����Ʈ
		String sql = "SELECT CARD, NAME, POINT " + 
					" FROM BR31_MEMBER";
		
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				vo.setCard(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setPoint(rs.getInt(3));
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		close();
		return vo;
	}
	
	//Select --> ȸ������ ��������(������)
	public MemberVO getMemberContent(String id) {
		MemberVO vo = new MemberVO();
		
		String sql = "SELECT ID, NAME, GENDER, BIRTH, HP, ADDR, EMAIL, POINT, TO_CHAR(MDATE,'YYYY-MM-DD') MDATE, CHOICE " + 
					" FROM BR31_MEMBER WHERE ID = ? " ;
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				vo.setId(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setGender(rs.getString(3));
				vo.setBirth(rs.getString(4));
				vo.setHp(rs.getString(5));
				vo.setAddr(rs.getString(6));
				vo.setEmail(rs.getString(7));
				vo.setPoint(rs.getInt(8));
				vo.setMdate(rs.getString(9));
				vo.setChoice(rs.getInt(10));
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		return vo;
	}
	
	
	//Select--->ȸ������ ����Ʈ(������)
	public ArrayList<MemberVO> getMemberList(){
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		
		String sql = "SELECT ROWNUM RNO, ID, NAME, GENDER, BIRTH, HP, ADDR, EMAIL, POINT, TO_CHAR(MDATE, 'YYYY-MM-DD') MDATE, CHOICE " + 
					" FROM " + 
					" (SELECT ID, NAME, GENDER, BIRTH, HP, ADDR, EMAIL, POINT, MDATE, CHOICE, ADMIN " + 
					" FROM BR31_MEMBER WHERE ADMIN = 'N' ORDER BY MDATE DESC)";
		
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				MemberVO vo = new MemberVO();
				
				vo.setRno(rs.getInt(1));
				vo.setId(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setGender(rs.getString(4));
				vo.setBirth(rs.getString(5));
				vo.setHp(rs.getString(6));
				vo.setAddr(rs.getString(7));
				vo.setEmail(rs.getString(8));
				vo.setPoint(rs.getInt(9));
				vo.setMdate(rs.getString(10));
				vo.setChoice(rs.getInt(11));
				
				list.add(vo);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return list;
		
	}
	
	
	
	
	
	
	//Select ---> �α���
	public boolean getLoginResult(String id, String pass) {
		boolean result = false;
		
		String sql = "SELECT COUNT(*) FROM BR31_MEMBER " + 
					" WHERE ID = ? AND PASS = ? ";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getInt(1) == 1) {
					result = true;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
	
	
	//Insert ---> ȸ������ �Է�
	public boolean getJoinResult(MemberVO vo) {
		boolean result = false;
		
		String sql = "INSERT INTO BR31_MEMBER " + 
				 	" VALUES(?, ?, ?, ?, ?, ?, ?, ?,'00000-00000', 0, 'null', SYSDATE, 0, 'N')";
		//���߿� �����ϸ� ī���ȣ�� �������� �ο��� �� �ֵ��� �����ϱ�!
		
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getBirth());
			pstmt.setString(6, vo.getHp());
			pstmt.setString(7, vo.getAddr());
			pstmt.setString(8, vo.getEmail());
			
			int joinResult = pstmt.executeUpdate();
			
			if(joinResult != 0) {
				result = true;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
	
	
}