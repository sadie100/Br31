package com.br31.dao;

import java.sql.*;

public class DBConn {

	//Field
	String url = "jdbc:oracle:thin:@localhost:1521";
	String user = "scott";
	String pass = "tiger";
	Connection conn;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//Constructor
	public DBConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void getStatement() {
		try {
			stmt = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void getPreparedStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(stmt != null) rs.close();
			if(conn != null) rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
