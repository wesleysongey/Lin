package com.du.lin.constant;

/**
 * 常量
 */
public interface Constant {
	/**
	 * 默认角色id 即用户
	 */
	int DEFAULT_ROLE_ID = 2;
	/**
	 * 设置密码原密码不正确时返回结果
	 */
	String ERROR_SET_PASSWORD_NO_MATCH = "3";
	/**
	 * 添加部门，部门已经存在了
	 */
	String ERROR_ADD_DEPT_ALREADY_EXISTS = "3";
	/**
	 * 不能删除默认部门
	 */
	String ERROR_CAN_NOT_DELETE_DEFAULT_DEPT = "4";
	/**
	 * 删除便签错误
	 * 可能是id传递错误
	 */
	String ERROR_DELETE_MEMO = "006";
	/**
	 * 添加便签错误
	 */
	String ERROR_ADD_MEMO = "007";
	/**
	 * 错误代码
	 * 删除登陆日志失败
	 * 也可能是日志为空
	 */
	String ERROR_DELETE_LOGINLOG_FAIL = "005";
	
	/**
	 * 添加通知的默认结果
	 */
	int RESULT_DEFAULT_ADD_NOTICE = 0;
	/**
	 * 错误代码
	 * 账号密码不匹配
	 */
	String ERROR_CODE_USERNAME_PASSWORD_MISMATCH = "201";
	/**
	 * 错误代码
	 * 验证码错误
	 */
	String ERROR_CODE_VERICATION_CODE_ERROR = "301";
	/**
	 * 错误代码
	 * 没有权限
	 */
	String ERROR_CODE_NO_PERMISION = "101";
	/**
	 * 操作成功代码
	 */
	String OPERATION_SUCCESS_CODE = "000";
	/**
	 *用户缓存
	 */
	String USER_CACHE_VALUE = "usercache";
}
