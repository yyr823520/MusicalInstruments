package com.dqz.entity;

public class Address {
    private int id;
	private int belongUserId;
	private String tel;
	private String country;
	private String province;
	private String city;
	private String area;
	private String street;
	private String detail;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBelongUserId() {
		return belongUserId;
	}

	public void setBelongUserId(int belongUserId) {
		this.belongUserId = belongUserId;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Override
	public String toString() {
		return "Address [id=" + id + ", belongUserId=" + belongUserId
				+ ", tel=" + tel + ", country=" + country + ", province="
				+ province + ", city=" + city + ", area=" + area + ", street="
				+ street + ", detail=" + detail + "]";
	}

	public Address(int id, int belongUserId, String tel, String country,
			String province, String city, String area, String street,
			String detail) {
		super();
		this.id = id;
		this.belongUserId = belongUserId;
		this.tel = tel;
		this.country = country;
		this.province = province;
		this.city = city;
		this.area = area;
		this.street = street;
		this.detail = detail;
	}

	public Address() {
		super();
	}

}
