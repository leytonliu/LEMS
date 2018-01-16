package com.lld.service;

import java.security.interfaces.RSAKey;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lld.conn.conn;
import com.lld.model.carTable;

public class carService {
	private Connection conn;
	private PreparedStatement pstmt;

	public carService() {
		conn = new conn().getCon();
	}

	public boolean addCar(carTable car) {
		String sql = "insert into car" + "(car_id,car_name,car_phone)" + "values(?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, car.getCar_id());
			pstmt.setString(2, car.getCar_name());
			pstmt.setString(3, car.getCar_phone());
			pstmt.execute();
			return true;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return false;
	}

	public List<carTable> queryAllCar() {
		List<carTable> CarString = new ArrayList<carTable>();
		try {
			pstmt = conn.prepareStatement("select * from car");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				carTable car = new carTable();
				car.setCar_id(rs.getInt(1));
				car.setCar_name(rs.getString(2));
				car.setCar_phone(rs.getString(3));
				car.setCar_busy(rs.getBoolean(4));
				CarString.add(car);
			}
			return CarString;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public carTable queryCarByCar_Id(int id) {
		try {
			pstmt = conn.prepareStatement("select * from car where car_id=?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				carTable car = new carTable();
				car.setCar_id(rs.getInt(1));
				car.setCar_name(rs.getString(2));
				car.setCar_phone(rs.getString(3));
				car.setCar_busy(rs.getBoolean(4));
				return car;
			}
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean updateCar(carTable car) {
		String sql = "update car set car_name=?,car_phone=? where car_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, car.getCar_name());
			pstmt.setString(2, car.getCar_phone());
			pstmt.setInt(3, car.getCar_id());
			pstmt.execute();
			return true;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return false;
	}

}
