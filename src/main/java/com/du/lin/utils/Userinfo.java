package com.du.lin.utils;

import com.du.lin.bean.User;

public class Userinfo {
	private static User user;
	/**
	 * 记录用户操作时间，若时间过长则需重新登陆
	 */
	private static long operateTime;
	public static String getUsername(){
		try {
			return getUser().getUsername();
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	public static User getUser(){
			return Userinfo.user;
	}
	
	public static String getSex(){
		if (getUser()==null || "".equals(getUser().getAvator())) {
			return "unknow";
		}else{
			return getUser().getAvator().equals("女")?"girl":"boy";
		}
	}
	
	public static void setUser(User user){
		Userinfo.user = user;
	}

	public static long getOperateTime() {
		return operateTime;
	}

	public static void setOperateTime(long operateTime) {
		Userinfo.operateTime = operateTime;
	}
	
	
	
}
