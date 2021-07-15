package com.sh.community.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBTest {
	public static void main(String[] args) {
		DBUtil util = DBUtil.getInstance();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from user";
		
		String user = null;
		
		try {
			conn = util.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				user = rs.getString(4);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(user);
		
	}
}
