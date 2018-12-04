package com.dqz.entity;

public class Product {

	private int id;
	private int categoryid;
	private String canuse;
	private int position;
	private String pname;
	private String brand;



	public Product(int id, int categoryid, String canuse, int position,
			String pname, String brand) {
		super();
		this.id = id;
		this.categoryid = categoryid;
		this.canuse = canuse;
		this.position = position;
		this.pname = pname;
		this.brand = brand;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getCategoryid() {
		return categoryid;
	}



	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}



	public String getCanuse() {
		return canuse;
	}



	public void setCanuse(String canuse) {
		this.canuse = canuse;
	}



	public int getPosition() {
		return position;
	}



	public void setPosition(int position) {
		this.position = position;
	}



	public String getPname() {
		return pname;
	}



	public void setPname(String pname) {
		this.pname = pname;
	}



	public String getBrand() {
		return brand;
	}



	public void setBrand(String brand) {
		this.brand = brand;
	}



	public Product() {
		super();
	}



	@Override
	public String toString() {
		return "Product [id=" + id + ", categoryid=" + categoryid + ", canuse="
				+ canuse + ", position=" + position + ", pname=" + pname
				+ ", brand=" + brand + "]";
	}

}
