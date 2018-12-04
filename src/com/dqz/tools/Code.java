package com.dqz.tools;
import java.util.List;

import com.dqz.entity.Product;
public class Code {
	private Integer code;
	private String msg;
	private int count;
	private List<Product> data;
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<Product> getData() {
		return data;
	}
	public void setData(List<Product> data) {
		this.data = data;
	}
	public Code(Integer code, String msg, int count, List<Product> data) {
		super();
		this.code = code;
		this.msg = msg;
		this.count = count;
		this.data = data;
	}
	public Code(Integer code, String msg) {
		super();
		this.code = code;
		this.msg = msg;
	}
	
}
