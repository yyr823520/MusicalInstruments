package com.dqz.entity;

public class ProductCategory {

	private int cid;
	private String c_name;
	private String status;
	public ProductCategory(int cid, String c_name, String status) {
		super();
		this.cid = cid;
		this.setC_name(c_name);
		this.status = status;
	}
	public ProductCategory() {
		super();
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "ProductCategory [cid=" + cid + ", c_name=" +c_name + ", status="
				+ status + "]";
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	
}
