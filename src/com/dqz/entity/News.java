package com.dqz.entity;

public class News {

	private int id;
	private String title;
	private String body;
	private int positionId;

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

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public int getPositionId() {
		return positionId;
	}

	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}

	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + ", body=" + body
				+ ", positionId=" + positionId + "]";
	}

	public News(int id, String title, String body, int positionId) {
		super();
		this.id = id;
		this.title = title;
		this.body = body;
		this.positionId = positionId;
	}

	public News() {
		super();
	}

}
