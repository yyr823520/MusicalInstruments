package com.dqz.entity;

import java.sql.Date;

public class LeaveMessages {

	private int id;
	private String userid;
	private String ask;
	private Date askTime;
	private String answer;
	private Date answerTime;
	private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getAsk() {
		return ask;
	}

	public void setAsk(String ask) {
		this.ask = ask;
	}

	public Date getAskTime() {
		return askTime;
	}

	public void setAskTime(Date askTime) {
		this.askTime = askTime;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getAnswerTime() {
		return answerTime;
	}

	public void setAnswerTime(Date answerTime) {
		this.answerTime = answerTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "LeaveMessages [id=" + id + ", userid=" + userid + ", ask="
				+ ask + ", askTime=" + askTime + ", answer=" + answer
				+ ", answerTime=" + answerTime + ", status=" + status + "]";
	}

	public LeaveMessages(int id, String userid, String ask, Date askTime,
			String answer, Date answerTime, String status) {
		super();
		this.id = id;
		this.userid = userid;
		this.ask = ask;
		this.askTime = askTime;
		this.answer = answer;
		this.answerTime = answerTime;
		this.status = status;
	}

	public LeaveMessages() {
		super();
	}

}
