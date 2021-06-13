package com.br31.dao;

import java.util.ArrayList;
import com.br31.vo.VocVO;

public class VocDAO extends DBConn {
	
	//������ ---> ���� �亯 ����
	public boolean getDeleteAnswerResult(String vid) {
		boolean result = false;
		
		String sql = " UPDATE BR31_VOC SET ANSWER = NULL, STATUS = 'NO' WHERE VID = ? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vid);
		
			int value = pstmt.executeUpdate();
			if(value != 0) result = true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
	//������ ---> admin_voc_write : ���� �亯 �ۼ�
	public boolean getInsertResult(String vid, String answer) {
		boolean result = false;
		
		String sql = " UPDATE BR31_VOC SET ANSWER = ?, STATUS = 'YES' WHERE VID = ? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, answer);
			pstmt.setString(2, vid);
		
			int value = pstmt.executeUpdate();
			if(value != 0) result = true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
	//�� ---> voc_content : ���� ����
	public boolean getDeleteResult(String vid) {
		boolean result = false;
		
		String sql = " DELETE FROM BR31_VOC WHERE VID = ? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vid);
			int value = pstmt.executeUpdate();
			
			if(value != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result; 
	}
	
	
	
	//�� ---> voc_update : ���ο� ���� ����
	public boolean getUpdateResult(VocVO vo) {
		boolean result = false;
		
		String sql = " UPDATE BR31_VOC SET QTYPE = ?, CTYPE = ?, TITLE = ?, CONTENT = ?, VFILE = ?, VSFILE = ?, NAME = ?, EMAIL = ?, HP = ? "
					+ "WHERE VID = ? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getQtype());
			pstmt.setString(2, vo.getCtype());
			pstmt.setString(3, vo.getTitle());
			pstmt.setString(4, vo.getContent());
			pstmt.setString(5, vo.getVfile());
			pstmt.setString(6, vo.getVsfile());
			pstmt.setString(7, vo.getName());
			pstmt.setString(8, vo.getEmail());
			pstmt.setString(9, vo.getHp());
			pstmt.setString(10, vo.getVid());
			
			int value = pstmt.executeUpdate();
			if(value != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(vo.getVid());
		close();
		return result;
	}
	
	
	//�� ---> voc_update : ���� ���� ����
	public boolean getUpdateResultNoFile(VocVO vo) {
		boolean result = false;
		
		String sql = " UPDATE BR31_VOC SET QTYPE = ?, CTYPE = ?, TITLE = ?, CONTENT = ?, NAME = ?, EMAIL = ?, HP = ? WHERE VID = ? ";
		getPreparedStatement(sql);

		try {
			pstmt.setString(1, vo.getQtype());
			pstmt.setString(2, vo.getCtype());
			pstmt.setString(3, vo.getTitle());
			pstmt.setString(4, vo.getContent());
			pstmt.setString(5, vo.getName());
			pstmt.setString(6, vo.getEmail());
			pstmt.setString(7, vo.getHp());
			pstmt.setString(8, vo.getVid());
			
			int value = pstmt.executeUpdate();
			if(value != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
	}
	
	//�� ---> voc_content
	public VocVO getContent(String vid) {
		VocVO vo = new VocVO();
		
		String sql = " SELECT VID, QTYPE, CTYPE, TITLE, CONTENT, VFILE, VSFILE, NAME, HP, EMAIL, TO_CHAR(VDATE, 'YYYY-MM-DD'), ANSWER "
					+ " FROM BR31_VOC WHERE VID = ? "; 
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setVid(rs.getString(1));
				vo.setQtype(rs.getString(2));
				vo.setCtype(rs.getString(3));
				vo.setTitle(rs.getString(4));
				vo.setContent(rs.getString(5));
				vo.setVfile(rs.getString(6));
				vo.setVsfile(rs.getString(7));
				vo.setName(rs.getString(8));
				vo.setHp(rs.getString(9));
				vo.setEmail(rs.getString(10));
				vo.setVdate(rs.getString(11));
				vo.setAnswer(rs.getString(12));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	//�� ---> voc_list : �α����� ���� ����Ʈ Ȯ�� ����.
	public ArrayList<VocVO> getList() {
		ArrayList<VocVO> list = new ArrayList<VocVO>();
		
		String sql = " SELECT ROWNUM RNO, VID, QTYPE, CTYPE, TITLE, TO_CHAR(VDATE, 'YYYY-MM-DD'), STATUS "
				+ " FROM (SELECT VID, QTYPE, CTYPE, TITLE, CONTENT, VDATE, STATUS FROM BR31_VOC ORDER BY VDATE DESC) ";
		 	/*	+ " FROM (SELECT VID, QTYPE, CTYPE, TITLE, VDATE, STATUS FROM BR31_VOC) WHERE ID = ? "; */
		getPreparedStatement(sql);
		
		try {
			/* pstmt.setString(1, id); */ //�Ķ���ͷ� �� ���̵� �޾ƿ� ��. 
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VocVO vo = new VocVO();
				
				vo.setRno(rs.getInt(1));
				vo.setVid(rs.getString(2));
				vo.setQtype(rs.getString(3));
				vo.setCtype(rs.getString(4));
				vo.setTitle(rs.getString(5));
				vo.setVdate(rs.getString(6));
				vo.setStatus(rs.getString(7));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		close();
		return list;
	}
	
	//�� ---> voc_write : ���� �ۼ�
	public boolean getInsertResult(VocVO vo) {
		boolean result = false;
		
		String sql = " INSERT INTO BR31_VOC VALUES('v_'||SEQU_BR31_VOC.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, SYSDATE, NULL, 'NO', NULL ) ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getQtype());
			pstmt.setString(2, vo.getCtype());
			pstmt.setString(3, vo.getTitle());
			pstmt.setString(4, vo.getContent());
			pstmt.setString(5, vo.getVfile());
			pstmt.setString(6, vo.getVsfile());
			pstmt.setString(7, vo.getName());
			pstmt.setString(8, vo.getHp());
			pstmt.setString(9, vo.getEmail());
			/* pstmt.setString(10, vo.getId()); */
		
			int value = pstmt.executeUpdate();
			if(value != 0) result = true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
}
