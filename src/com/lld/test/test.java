package com.lld.test;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.lld.conn.conn;

public class test {

	public static void main(String[] args) {
		conn conn = new conn();
		PreparedStatement pstmt;
		String sql1="select * from admin where admin_name=? and admin_password=?";
		String sql2="select * from orders";
		try {
			pstmt = conn.getCon().prepareStatement(sql2);
			//pstmt.setString(1, "lld");
			//pstmt.setString(2, "lld");
			ResultSet rs = pstmt.executeQuery();
			/*
			 * if (rs.next()) { System.out.println("找到了");
			 * 
			 * } else { System.out.println("没有找到");
			 * 
			 * }
			 */

			while (rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}