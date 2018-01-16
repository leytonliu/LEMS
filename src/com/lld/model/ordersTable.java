package com.lld.model;

public class ordersTable {

	private int orders_id;
	private String orders_sname;
	private String orders_sphone;
	private String orders_saddress;
	private String orders_rname;
	private String orders_rphone;
	private String orders_raddress;
	private boolean orders_completed;
	private int admin_id;
	private int car_id;
	public int getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(int orders_id) {
		this.orders_id = orders_id;
	}
	public String getOrders_sname() {
		return orders_sname;
	}
	public void setOrders_sname(String orders_sname) {
		this.orders_sname = orders_sname;
	}
	public String getOrders_sphone() {
		return orders_sphone;
	}
	public void setOrders_sphone(String orders_sphone) {
		this.orders_sphone = orders_sphone;
	}
	public String getOrders_saddress() {
		return orders_saddress;
	}
	public void setOrders_saddress(String orders_saddress) {
		this.orders_saddress = orders_saddress;
	}
	public String getOrders_rname() {
		return orders_rname;
	}
	public void setOrders_rname(String orders_rname) {
		this.orders_rname = orders_rname;
	}
	public String getOrders_rphone() {
		return orders_rphone;
	}
	public void setOrders_rphone(String orders_rphone) {
		this.orders_rphone = orders_rphone;
	}
	public String getOrders_raddress() {
		return orders_raddress;
	}
	public void setOrders_raddress(String orders_raddress) {
		this.orders_raddress = orders_raddress;
	}
	public boolean isOrders_completed() {
		return orders_completed;
	}
	public void setOrders_completed(boolean orders_completed) {
		this.orders_completed = orders_completed;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}

}
