package com.br31.comms;

import java.util.HashMap;

import com.br31.dao.DBConn;

public class Commons {

	// ?��?���? 처리 메소?�� - startCount, endCount: HashMap map = commons.getPage(rpage, dao);
	public HashMap<String, Integer> getPage(String rpage, DBConn dao) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();

		// ?��?���? 처리 - startCount, endCount 구하�?
		int startCount = 0;
		int endCount = 0;
		int pageSize = 10; // ?��?��?���??�� 게시�? ?��
		int reqPage = 1; // ?���??��?���?
		int pageCount = 1; // ?���? ?��?���? ?��
		int dbCount = dao.execTotalCount(); // DB?��?�� �??��?�� ?���? ?��?��

		// �? ?��?���? ?�� 계산
		if (dbCount % pageSize == 0) {
			pageCount = dbCount / pageSize;
		} else {
			pageCount = dbCount / pageSize + 1;
		}

		// ?���? ?��?���? 계산
		if (rpage != null) {
			reqPage = Integer.parseInt(rpage);
			startCount = (reqPage - 1) * pageSize + 1;
			endCount = reqPage * pageSize;
		} else {
			startCount = 1;
			endCount = 5;
		}

		map.put("start", startCount);
		map.put("end", endCount);
		map.put("dbCount", dbCount);
		map.put("pageSize", pageSize);
		map.put("reqPage", reqPage);
		
		return map;
	}
}
