package com.dqz.entity;

public class Piano {
	private int id;
	private int keynums;
	private String style;
	private int p_id;
	private int p_choose;
	private String p_description;
	private String x_hao;
	private String persons;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public int getP_choose() {
		return p_choose;
	}
	public void setP_choose(int p_choose) {
		this.p_choose = p_choose;
	}
	public String getP_description() {
		return p_description;
	}
	public void setP_description(String p_description) {
		this.p_description = p_description;
	}
	public String getX_hao() {
		return x_hao;
	}
	public void setX_hao(String x_hao) {
		this.x_hao = x_hao;
	}
	public String getPersons() {
		return persons;
	}
	public void setPersons(String persons) {
		this.persons = persons;
	}
	public Piano(int id, int keynums, String style, int p_id, int p_choose,
			String p_description, String x_hao, String persons) {
		super();
		this.id = id;
		this.keynums = keynums;
		this.style = style;
		this.p_id = p_id;
		this.p_choose = p_choose;
		this.p_description = p_description;
		this.x_hao = x_hao;
		this.persons = persons;
	}
	public Piano() {
		super();
	}
	@Override
	public String toString() {
		return "Piano [id=" + id + ", keynums=" + keynums + ", style=" + style
				+ ", p_id=" + p_id + ", p_choose=" + p_choose
				+ ", p_description=" + p_description + ", x_hao=" + x_hao
				+ ", persons=" + persons + "]";
	}
	public int getKeynums() {
		return keynums;
	}
	public void setKeynums(int keynums) {
		this.keynums = keynums;
	} 
	
	

}
