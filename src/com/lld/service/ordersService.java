package com.lld.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.lld.conn.conn;
import com.lld.model.carTable;
import com.lld.model.ordersTable;

public class ordersService {
	private Connection conn;
	private PreparedStatement pstmt;

	public ordersService() {
		conn = new conn().getCon();
	}

	public boolean addOrders(ordersTable orders) {
		String sql = "insert into orders"
				+ "(orders_sname,orders_sphone,orders_saddress,orders_rname,orders_rphone,orders_raddress)"
				+ "values(?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, orders.getOrders_sname());
			pstmt.setString(2, orders.getOrders_sphone());
			pstmt.setString(3, orders.getOrders_saddress());
			pstmt.setString(4, orders.getOrders_rname());
			pstmt.setString(5, orders.getOrders_rphone());
			pstmt.setString(6, orders.getOrders_raddress());
			pstmt.execute();
			return true;
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return false;
	}

	public List<ordersTable> queryAllOrders() {

		List<ordersTable> OrdersString = new ArrayList<ordersTable>();
		try {
			pstmt = conn.prepareStatement("select * from orders");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ordersTable orders = new ordersTable();
				orders.setOrders_id(rs.getInt(1));
				orders.setOrders_sname(rs.getString(2));
				orders.setOrders_sphone(rs.getString(3));
				orders.setOrders_saddress(rs.getString(4));
				orders.setOrders_rname(rs.getString(5));
				orders.setOrders_rphone(rs.getString(6));
				orders.setOrders_raddress(rs.getString(7));
				orders.setOrders_completed(rs.getBoolean(8));
				orders.setAdmin_id(rs.getInt(9));
				orders.setCar_id(rs.getInt(10));
				OrdersString.add(orders);
			}
			return OrdersString;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public ordersTable queryOrdersByOrders_Id(int id) {
		try {
			pstmt = conn.prepareStatement("select * from orders where orders_id=?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				ordersTable orders = new ordersTable();
				orders.setOrders_id(rs.getInt(1));
				orders.setOrders_rname(rs.getString(2));
				orders.setOrders_rphone(rs.getString(3));
				orders.setOrders_raddress(rs.getString(4));
				orders.setOrders_sname(rs.getString(5));
				orders.setOrders_sphone(rs.getString(6));
				orders.setOrders_saddress(rs.getString(7));
				orders.setOrders_completed(rs.getBoolean(8));
				orders.setAdmin_id(rs.getInt(9));
				orders.setCar_id(rs.getInt(10));
				System.out.println(orders.getOrders_id());
				return orders;
			}
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean updateOrders(ordersTable orders) {
		String sql = "update orders set orders_sname=?,orders_sphone=?,orders_saddress=?,orders_rname=?,orders_rphone=?,orders_raddress=?,orders_completed=?,admin_id=?,car_id=? where orders_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, orders.getOrders_sname());
			pstmt.setString(2, orders.getOrders_sphone());
			pstmt.setString(3, orders.getOrders_saddress());
			pstmt.setString(4, orders.getOrders_rname());
			pstmt.setString(5, orders.getOrders_rphone());
			pstmt.setString(6, orders.getOrders_raddress());
			pstmt.setBoolean(7, orders.isOrders_completed());
			pstmt.setInt(8, orders.getAdmin_id());
			pstmt.setInt(9, orders.getCar_id());
			pstmt.setInt(10, orders.getOrders_id());
			pstmt.execute();
			return true;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return false;
	}

	public boolean ConfirmOrders(int id) {
		try {
			System.out.print(id);
			pstmt = conn.prepareStatement("UPDATE orders SET orders_completed=true WHERE orders_id=?");
			ordersTable orders = new ordersTable();
			pstmt.setInt(1,id);
			System.out.println(orders.isOrders_completed());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
