package com.du.lin.service;

import com.du.lin.bean.Leave;

public interface LeaveService {
	String addLeave(Leave leave);
	String getAllUserLeaveJson(int page , int count);
	String withdrawLeave(int id);
}
