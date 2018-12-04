package com.dqz.entity;

import java.sql.Date;

public class Comments {

	private int id;
	private int orderid;
	private String contents;
	private int productMarks;
	private int serviceMarks;
	private Date commentTime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getProductMarks() {
		return productMarks;
	}

	public void setProductMarks(int productMarks) {
		this.productMarks = productMarks;
	}

	public int getServiceMarks() {
		return serviceMarks;
	}

	public void setServiceMarks(int serviceMarks) {
		this.serviceMarks = serviceMarks;
	}

	public Date getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	@Override
	public String toString() {
		return "Comments [id=" + id + ", orderid=" + orderid + ", contents="
				+ contents + ", productMarks=" + productMarks
				+ ", serviceMarks=" + serviceMarks + ", commentTime="
				+ commentTime + "]";
	}

	public Comments(int id, int orderid, String contents, int productMarks,
			int serviceMarks, Date commentTime) {
		super();
		this.id = id;
		this.orderid = orderid;
		this.contents = contents;
		this.productMarks = productMarks;
		this.serviceMarks = serviceMarks;
		this.commentTime = commentTime;
	}

	public Comments() {
		super();
	}

}
