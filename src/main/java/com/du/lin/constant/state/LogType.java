package com.du.lin.constant.state;

public enum LogType {
	LOGIN("登陆日志"),
	LOGIN_FAIL("登陆失败日志"),
	EXIT("退出日志"),
	BUSSINESS("业务日志"),
	EXCEPTION("异常日志");
	
	
	
	String message;

	
	
	private LogType(String message) {
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
