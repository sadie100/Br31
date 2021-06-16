package com.br31.dao;

import java.util.ArrayList;

import com.br31.vo.NoticeVO;

public class NoticeDAO extends DBConn {

	// ?­? ?  κ²μκΈ?? ??Όλͺ? κ°?? Έ?€κΈ?
	public String getNsfile(int articleno) {
		String result = "";
		try {
			String sql = "SELECT NSFILE FROM BR31_NOTICE WHERE ARTICLENO = ?";
			getPreparedStatement(sql);

			pstmt.setInt(1, articleno);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// ??Ό?΄ λ³?κ²½λμ§? ?? κ²½μ°
	public boolean getUpdateResultNofile(NoticeVO vo) {
		boolean result = false;
		try {
			String sql = "UPDATE BR31_NOTICE SET TITLE = ?, NCONTENT = ? WHERE ARTICLENO = ?";
			getPreparedStatement(sql);

			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setInt(3, vo.getArticleno());

			int val = pstmt.executeUpdate();
			if (val == 1) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// ?λ‘μ΄ ??Ό? ? ?? κ²½μ°
	public boolean getUpdateResult(NoticeVO vo) {
		boolean result = false;
		try {
			String sql = "UPDATE BR31_NOTICE SET TITLE = ?, NCONTENT = ?, NFILE = ?, NSFILE = ? WHERE ARTICLENO = ?";
			getPreparedStatement(sql);

			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getNsfile());
			pstmt.setInt(5, vo.getArticleno());

			int val = pstmt.executeUpdate();
			if (val == 1) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public boolean getDeleteResult(String articleno) {
		boolean result = false;
		try {
			String sql = "DELETE FROM BR31_NOTICE WHERE ARTICLENO = ?";
			getPreparedStatement(sql);

			pstmt.setString(1, articleno);

			int val = pstmt.executeUpdate();
			if (val == 1) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public boolean getUpdateHit(String articleno) {
		boolean result = false;
		try {
			String sql = "UPDATE BR31_NOTICE SET NHIT = NHIT + 1 WHERE ARTICLENO = ?";
			getPreparedStatement(sql);

			pstmt.setString(1, articleno);
			int val = pstmt.executeUpdate();
			if (val == 1) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
	}

	public NoticeVO getContent(String articleno) {
		NoticeVO vo = null;
		try {
			String sql = "SELECT ARTICLENO, TITLE, NCONTENT, NFILE, NSFILE, TO_CHAR(MDATE, 'YYYY-MM-DD') MDATE FROM BR31_NOTICE WHERE articleno = ?";
			getPreparedStatement(sql);

			pstmt.setString(1, articleno);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new NoticeVO();
				vo.setArticleno(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setNcontent(rs.getString(3));
				vo.setNfile(rs.getString(4));
				vo.setNsfile(rs.getString(5));
				vo.setMdate(rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	public ArrayList<NoticeVO> getList() {
		ArrayList<NoticeVO> list = new ArrayList<NoticeVO>();
		try {
			String sql = "SELECT ROWNUM AS RNO, ARTICLENO, TITLE, TO_CHAR(MDATE, 'YYYY-MM-DD') AS MDATE ";
			sql += "	  FROM (SELECT ARTICLENO, TITLE, MDATE FROM BR31_NOTICE ORDER BY MDATE DESC)";
			getPreparedStatement(sql);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				NoticeVO vo = new NoticeVO();
				vo.setRno(rs.getInt(1));
				vo.setArticleno(rs.getInt(2));
				vo.setTitle(rs.getString(3));
				vo.setMdate(rs.getString(4));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}

	public boolean getInsertResult(NoticeVO vo) {
		boolean result = false;
		try {
			String sql = "INSERT INTO BR31_NOTICE VALUES('n_' || SEQ_BR31_NOTICE.NEXTVAL, ?, ?, ?, ?, 0, SYSDATE)";
			getPreparedStatement(sql);

			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getNsfile());

			int val = pstmt.executeUpdate();
			if (val == 1) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
	}
}
