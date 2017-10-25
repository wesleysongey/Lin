package com.du.lin.utils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.du.lin.bean.Dept;
import com.du.lin.bean.LoginLog;
import com.du.lin.bean.Notice;
import com.du.lin.bean.OperationLog;
import com.du.lin.bean.Role;
import com.du.lin.bean.ShiroUser;
import com.du.lin.bean.ShowLog;
import com.du.lin.bean.ShowNotice;
import com.du.lin.bean.User;
import com.du.lin.constant.state.NoticeType;
import com.du.lin.dao.DeptMapper;
import com.du.lin.dao.RoleMapper;
import com.du.lin.dao.UserMapper;


public class BeanUtil {
	@Autowired
	private UserMapper userMapper;

	@Autowired
	private DeptMapper deptMapper;
	@Autowired
	private RoleMapper roleMapper;
	
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd HH:mm");
	
	public ShowNotice toShowNotice(Notice notice){
		
		String message = "";
		if (notice.getBody().trim().length() > 40) {
			message = notice.getBody().substring(0, 39)+ "..." ;
		}else{
			message = notice.getBody();
		}
		
		ShowNotice result = new ShowNotice();
		
		result.setBody(notice.getBody());
		result.setMessage(message + "<br/><small class=\"text-muted\"> " + sdf.format(notice.getCreatetime()) + " </small>");
		if (NoticeType.System.getName().endsWith(notice.getType())) {
			result.setAvatar("systemavatar");
			result.setSendUsername("系统通知");
		}else{
			ShiroUser user = userMapper.selectByPrimaryKey(notice.getSenduserid());
			result.setAvatar(user.getAvator().endsWith("0")?"girl":"boy");
			result.setSendUsername(user.getUsername());
		}
		
//		result.setCreatetime(sdf.format(notice.getCreatetime()));
		return result;
	}
	
	public User toUser(ShiroUser shiroUser){
		User user = new User();
		user.setAvator("0".equals(shiroUser.getAvator())?"女":"男");
		user.setId(shiroUser.getId());
		int deptId = shiroUser.getDeptid();
		Dept dept = deptMapper.selectByPrimaryKey(deptId);
		String deptName = dept.getName();
		user.setDept(deptName);
		user.setPassword(shiroUser.getPassword());
		Role role = roleMapper.selectByPrimaryKey(shiroUser.getRoleid());
		user.setRole(role.getRoles());
		user.setRoleTip(role.getTips());
		user.setSalt(shiroUser.getSalt());
		user.setUsername(shiroUser.getUsername());
		return user;
	}
	
	public List<User> toUserList(List<ShiroUser> userList){
		
		List<User> users = new ArrayList<User>();
		for (ShiroUser user : userList) {
			users.add(toUser(user));
		}
		return users;
	}
	
	
	
	public ShowLog loginLogToShowLog(LoginLog log){
		ShowLog showLoginLog = new ShowLog();
		showLoginLog.setLogname(log.getLogname());
		showLoginLog.setUsername(log.getMessage());
		showLoginLog.setCreatetime(sdf.format(log.getCreatetime()));
		return showLoginLog;
	}
	
	public ShowLog operationLogToShowLog(OperationLog log){
		ShowLog showLoginLog = new ShowLog();
		showLoginLog.setLogname(log.getLogname());
		showLoginLog.setUsername(log.getMessage());
		showLoginLog.setCreatetime(sdf.format(log.getCreatetime()));
		return showLoginLog;
	}
	
	public List<ShowLog> loginLogListToShowLogList(List<LoginLog> loglist){
		List<ShowLog> result = new ArrayList<ShowLog>();
		if (loglist== null || loglist.size() ==0) {
			return result;
		}
		for(LoginLog loginLog : loglist){
			result.add(loginLogToShowLog(loginLog));
		}
		return result;
	}
	
	public List<ShowLog> operationLogListToShowLogList(List<OperationLog> loglist){
		List<ShowLog> result = new ArrayList<ShowLog>();
		if (loglist== null || loglist.size() ==0) {
			return result;
		}
		for(OperationLog loginLog : loglist){
			result.add(operationLogToShowLog(loginLog));
		}
		return result;
	}
}
