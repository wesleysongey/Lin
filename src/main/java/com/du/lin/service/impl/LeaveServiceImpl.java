package com.du.lin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.du.lin.bean.Leave;
import com.du.lin.bean.User;
import com.du.lin.bean.UserLeave;
import com.du.lin.constant.Constant;
import com.du.lin.dao.LeaveMapper;
import com.du.lin.service.LeaveService;
import com.du.lin.utils.BeanUtil;
import com.du.lin.utils.JqgridUtil;
import com.du.lin.utils.Userinfo;
@Service
public class LeaveServiceImpl implements LeaveService{
	@Autowired
	private LeaveMapper mapper;
	@Autowired
	private JqgridUtil jqgridUtil;
	@Autowired
	private BeanUtil beanUtil;
	
	@Override
	public String addLeave(Leave leave) {
		switch (leave.getType()) {
		case "1":
			leave.setType("事假");
			break;
		case "2":
			leave.setType("病假");
			break;
		}
		int result = mapper.insert(leave);
		if (result == 1) {
			return Constant.OPERATION_SUCCESS_CODE;
		}
		return Constant.UNKNOWN_ERROR_CODE;
	}

	@Override
	public String getAllUserLeaveJson(int page , int count) {
		List<Leave> dblist = mapper.getListByUserid(Userinfo.getUserid());
		List<UserLeave> list = beanUtil.leaveListToUserLeaveList(dblist);
		int toIndex = count * page;
		if (list.size() < toIndex) {
			toIndex = list.size();
		}
		List<UserLeave> result = list.subList(count * (page - 1), toIndex);
		return jqgridUtil.getJson(result, page + "", list.size() , count);
	}

	@Override
	public String withdrawLeave(int id) {
		Leave leave = new Leave();
		leave.setId(id);
		leave.setIsfinish(3);
		if(mapper.updateByPrimaryKeySelective(leave) == 1){
			return Constant.OPERATION_SUCCESS_CODE;
					
		}
		return Constant.UNKNOWN_ERROR_CODE;
	}

}
