package com.du.lin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.du.lin.bean.LoginLog;
import com.du.lin.bean.ShowLog;
import com.du.lin.constant.Constant;
import com.du.lin.dao.LoginLogMapper;
import com.du.lin.service.LoginLogService;
import com.du.lin.utils.BeanUtil;

@Service
public class LoginLogServiceImpl implements LoginLogService {
	
	@Autowired
	private LoginLogMapper loginLogMapper;
	@Autowired
	private BeanUtil beanUtil;

	@Override
	public List<LoginLog> getAllLoginLog() {

		return loginLogMapper.selectAll();
	}

	@Override
	public List<ShowLog> getAllShowLoginLog() {
		return beanUtil.loginLogListToShowLogList(getAllLoginLog());
	}

	@Override
	public String deleteALLLoginLog() {
		int result = loginLogMapper.deleteAll();
		if (result > 0) {
			return Constant.OPERATION_SUCCESS_CODE;
		}else{
			return Constant.ERROR_DELETE_LOGINLOG_FAIL;
		}
	}

}
