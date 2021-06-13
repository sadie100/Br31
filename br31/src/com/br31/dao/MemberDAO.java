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
	
	//아이디 중복 확인 프로세스
	public int idCheck(String id) {
		int result = 0;
		
		String sql = "select count(*) from br31_member where id = ? ";
		
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				result = rs.getInt(1);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return result;
	}
	
	//Update -->마이페이지 회원정보 수정
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
	
	
	//Select -->회원 마이페이지 정보
	public MemberVO getMypageData(String id) {
		MemberVO vo = new MemberVO();
		
		//카드번호, 이름, 포인트
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
	
	//Select --> 회원정보 상세페이지(관리자)
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

		String hplist[] = vo.getHp().split("-");
		
		vo.setHp1(hplist[0]);
		vo.setHp2(hplist[1]);
		vo.setHp3(hplist[2]);
		
		String emaillist[] = vo.getEmail().split("@");
		vo.setEmail1(emaillist[0]);
		vo.setEmail2(emaillist[1]);
		
		String addrstr = vo.getAddr();
		String addrstr2 = vo.getAddr();
		int firsttarget = addrstr.indexOf("(");
		int firsttarget2 = addrstr.indexOf(")");
		vo.setAddr1(addrstr.substring(firsttarget+1, firsttarget2));
		vo.setAddr2(addrstr2.substring(7, addrstr2.length()));
		
		return vo;
	}
	
	
	//Select--->회원정보 리스트(관리자)
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
	
	
	
	
	
	
	//Select ---> 로그인
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
	
	
	
	//Insert ---> 회원정보 입력
	public boolean getJoinResult(MemberVO vo) {
		boolean result = false;
		
		String sql = "INSERT INTO BR31_MEMBER " + 
				 	" VALUES(?, ?, ?, ?, ?, ?, ?, ?,'00000-00000', 0, 'null', SYSDATE, 0, 'N')";
		//나중에 가능하면 카드번호를 랜덤으로 부여할 수 있도록 구현하기!
		
		
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
