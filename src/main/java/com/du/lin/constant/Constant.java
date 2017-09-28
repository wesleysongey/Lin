package com.du.lin.constant;

public interface Constant {
	/**
	 * 默认角色id 即用户
	 */
	int DEFAULT_ROLE_ID = 2;
	/**
	 * 默认部门id 即未分配
	 */
	int DEFAULT_DEPT_ID = 0;
	/**
	 * 设置密码原密码不正确时返回结果
	 */
	String RESULT_SET_PASSWORD_NO_MATCH = "3";
	/**
	 * 添加部门，部门已经存在了
	 */
	String RESULT_ADD_DEPT_ALREADY_EXISTS = "3";
	/**
	 * 添加通知的默认结果
	 */
	int RESULT_DEFAULT_ADD_NOTICE = 0;
	
}
