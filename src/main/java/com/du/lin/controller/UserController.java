package com.du.lin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.du.lin.annotation.BizLog;
import com.du.lin.bean.Dept;
import com.du.lin.bean.Role;
import com.du.lin.bean.ShiroUser;
import com.du.lin.bean.User;
import com.du.lin.constant.Constant;
import com.du.lin.dao.DeptMapper;
import com.du.lin.dao.RoleMapper;
import com.du.lin.dao.UserMapper;
import com.du.lin.log.LogManager;
import com.du.lin.log.LogTaskFactory;
import com.du.lin.service.UserService;
import com.du.lin.shiro.ShiroKit;
import com.du.lin.utils.BeanUtil;
import com.du.lin.utils.JqgridUtil;
import com.du.lin.utils.LinTools;
import com.du.lin.utils.MD5Util;
import com.du.lin.utils.Userinfo;
import com.google.gson.Gson;

@Controller
public class UserController {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	

	@Autowired
	private ShiroKit shiroKit;

	@Autowired
	private UserService service;
	
	@ResponseBody
	@RequestMapping(value="/userlist" , method={RequestMethod.POST})
	public String list(HttpServletRequest request){
		String page = request.getParameter("page"); // 取得当前页数,注意这是jqgrid自身的参数   
	    String rows = request.getParameter("rows"); //
		
		return service.getAllUserJson(Integer.parseInt(page) , Integer.parseInt(rows));
		
		
	}
	
	@BizLog("添加用户")
	@ResponseBody
	@RequestMapping(value="/adduser" , method={RequestMethod.POST})
	public void addUser(HttpServletRequest request ){
		if (!shiroKit.hasRole("ROLE_ADMIN")) {
			System.out.println("没有权限");
			return;
		}
		
		String username = request.getParameter("username");
		String avator = request.getParameter("avator");
		String dept = request.getParameter("dept");
		String role = request.getParameter("roleTip");
	
		service.addUser(username, avator, dept, role);
		
	}
	
	
	@BizLog("用户密码重置")
	@ResponseBody
	@RequestMapping(value="/resetpassword" , method=RequestMethod.POST)
	public String resetPassword(HttpServletRequest request){
		String id = request.getParameter("id");

		return service.resetPassword(Integer.parseInt(id));
	}
	
	@BizLog("删除用户")
	@ResponseBody
	@RequestMapping(value="/deleteuser" , method=RequestMethod.POST)
	public String deleteUser(HttpServletRequest request){
		String id = request.getParameter("id");
		return service.deleteUser(Integer.parseInt(id));
	}
	
	@BizLog("用户信息修改")
	@ResponseBody
	@RequestMapping(value="/setuser" , method=RequestMethod.POST)
	public String setuser(HttpServletRequest request){
		
		String newId = request.getParameter("changeid");
		String newDeptId = request.getParameter("changedept");
		String newRoleId = request.getParameter("changerole");
		
		return service.modifyInfo(newId, newDeptId, newRoleId);
	}
	
	@BizLog("用户修改密码")
	@ResponseBody
	@RequestMapping(value="/rsetpassword" , method={RequestMethod.POST})
	public String setPassword(HttpServletRequest request){
		String newPassword = request.getParameter("password");
		String oldPassword = request.getParameter("oldpassword");
		return service.changePassword(oldPassword, newPassword);
	}
	
	
	
	
	@RequestMapping(value = "/logout" , method = {RequestMethod.GET})
	public String logout(HttpServletRequest request){
		
		try {
			int id = Userinfo.getUser().getId();
			String username = Userinfo.getUsername();
			String ip = request.getRemoteHost();
			TimerTask task = LogTaskFactory.getLogoutTimerTask(id, username, ip);
			LogManager.getInstance().saveLog(task);
			SecurityUtils.getSubject().logout();
		} catch (Exception e) {
			e.printStackTrace();
		}
		log.info("用户登出");
		return "redirect:/";
	}
	
	
}
