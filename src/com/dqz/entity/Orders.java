package com.dqz.entity;

import java.sql.Date;

public class Orders {

	private int id;
	private int productId;
	private String userid;
	private double price;
	private int quantity;
	private Date orderdate;
	private String status;
	private String shipName;
	private int addressId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	@Override
	public String toString() {
		return "Orders [id=" + id + ", productId=" + productId + ", userid="
				+ userid + ", price=" + price + ", quantity=" + quantity
				+ ", orderdate=" + orderdate + ", status=" + status
				+ ", shipName=" + shipName + ", addressId=" + addressId + "]";
	}

	public Orders(int id, int productId, String userid, double price,
			int quantity, Date orderdate, String status, String shipName,
			int addressId) {
		super();
		this.id = id;
		this.productId = productId;
		this.userid = userid;
		this.price = price;
		this.quantity = quantity;
		this.orderdate = orderdate;
		this.status = status;
		this.shipName = shipName;
		this.addressId = addressId;
	}

	public Orders() {
		super();
	}

}
