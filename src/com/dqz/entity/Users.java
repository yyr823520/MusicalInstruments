package com.dqz.entity;

public class Users {
	private String u_id;
	private String nickname;
	private String sex;
	private String picurl;
	private String descrition;
	private int mark;
	private int default_addressid;
	private String pass;
	private String lv;
	private int u_state;
	private String email;
	public Users() {
		super();
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPicurl() {
		return picurl;
	}
	public void setPicurl(String picurl) {
		this.picurl = picurl;
	}
	public String getDescrition() {
		return descrition;
	}
	public void setDescrition(String descrition) {
		this.descrition = descrition;
	}
	public int getMark() {
		return mark;
	}
	public void setMark(int mark) {
		this.mark = mark;
	}
	public int getDefault_addressid() {
		return default_addressid;
	}
	public void setDefault_addressid(int default_addressid) {
		this.default_addressid = default_addressid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getLv() {
		return lv;
	}
	public void setLv(String lv) {
		this.lv = lv;
	}
	public int getU_state() {
		return u_state;
	}
	public void setU_state(int u_state) {
		this.u_state = u_state;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Users(String u_id, String nickname, String sex, String picurl,
			String descrition, int mark, int default_addressid, String pass,
			String lv, int u_state, String email) {
		super();
		this.u_id = u_id;
		this.nickname = nickname;
		this.sex = sex;
		this.picurl = picurl;
		this.descrition = descrition;
		this.mark = mark;
		this.default_addressid = default_addressid;
		this.pass = pass;
		this.lv = lv;
		this.u_state = u_state;
		this.email = email;
	}
	@Override
	public String toString() {
		return "Users [u_id=" + u_id + ", nickname=" + nickname + ", sex="
				+ sex + ", picurl=" + picurl + ", descrition=" + descrition
				+ ", mark=" + mark + ", default_addressid=" + default_addressid
				+ ", pass=" + pass + ", lv=" + lv + ", u_state=" + u_state
				+ ", email=" + email + "]";
	}
	
	
	
}
