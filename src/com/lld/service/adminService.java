package com.lld.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lld.conn.conn;
import com.lld.model.adminTable;
import com.lld.model.carTable;
import com.lld.model.ordersTable;

public class adminService {
	private Connection conn;
	private PreparedStatement pstmt;

	public adminService() {
		conn = new conn().getCon();
	}

	public boolean valiAdmin(adminTable admin) {
		try {
			pstmt = conn.prepareStatement("select * from admin where admin_name=? and admin_password=?");
			pstmt.setString(1, admin.getAdmin_name());
			pstmt.setString(2, admin.getAdmin_password());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean addAdmin(adminTable admin) {
		String sql = "insert into admin" + "(admin_name,admin_password)" + "values(?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, admin.getAdmin_name());
			pstmt.setString(2, admin.getAdmin_password());
			pstmt.execute();
			return true;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return false;
	}

	public boolean modifyPassword(adminTable admin) {
		try {
			System.out.print(admin.getAdmin_name());
			pstmt = conn.prepareStatement("UPDATE admin SET admin_password=? WHERE admin_name=?");
			System.out.println(admin.getAdmin_password());
			pstmt.setString(1, admin.getAdmin_password());
			pstmt.setString(2, admin.getAdmin_name());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
