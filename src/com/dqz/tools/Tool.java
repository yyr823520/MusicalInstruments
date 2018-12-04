package com.dqz.tools;
import com.google.gson.Gson;
public class Tool {
	private Code code = null;
	private Gson gson = new Gson();

	public String toJson(int num) {
		if (num > 0)
			code = new Code(0, "成功");
		else
			code = new Code(1, "失败");

		return gson.toJson(code);
	}
	

}