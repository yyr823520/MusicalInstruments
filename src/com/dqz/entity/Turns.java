package com.dqz.entity;

public class Turns {
	private int id;
	private String title;
	private String contents;
	private int c_id;
	private int num;
	private String picurl;
	public String getPicurl() {
		return picurl;
	}
	public void setPicurl(String picurl) {
		this.picurl = picurl;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}



	public Turns(int id, String title, String contents, int c_id, int num,
			String picurl) {
		super();
		this.id = id;
		this.title = title;
		this.contents = contents;
		this.c_id = c_id;
		this.num = num;
		this.picurl = picurl;
	}
	public Turns() {
		super();
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	@Override
	public String toString() {
		return "Turns [id=" + id + ", title=" + title + ", contents="
				+ contents + ", c_id=" + c_id + ", num=" + num + ", picurl="
				+ picurl + "]";
	}

	
}
