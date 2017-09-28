package com.du.lin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.json.JSONObject;
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
import com.du.lin.shiro.ShiroKit;
import com.du.lin.utils.BeanUtil;
import com.du.lin.utils.LinTools;
import com.du.lin.utils.MD5Util;
import com.du.lin.utils.Userinfo;
import com.google.gson.Gson;

@Controller
public class UserController {
	
	
	
	@Autowired
	private Gson gson;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private ShiroKit shiroKit;
	@Autowired
	private LinTools linTools;
	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private DeptMapper deptMapper;
	@Autowired
	private BeanUtil beanUtil;
	
	@ResponseBody
	@RequestMapping(value="/userlist" , method={RequestMethod.POST})
	public String list(){
		List<ShiroUser> userList = userMapper.getUserList();
		List<User> users = new ArrayList<User>();
		for (ShiroUser user : userList) {
			users.add(beanUtil.toUser(user));
		}
		
	
		return gson.toJson(users);
		
		
	}
	
	@BizLog("添加用户")
	@ResponseBody
	@RequestMapping(value="/adduser" , method={RequestMethod.POST})
	public void addUser(HttpServletRequest request ){
		System.out.println("addUser");
		if (!shiroKit.hasRole("ROLE_ADMIN")) {
			System.out.println("没有权限");
			return;
		}
		
		String username = request.getParameter("username");
		String avator = request.getParameter("avator");
		String dept = request.getParameter("dept");
		String role = request.getParameter("roleTip");
		
		System.out.println(username);
		System.out.println(avator);
		System.out.println(dept);
		System.out.println(role);
		
		ShiroUser user = new ShiroUser();
		user.setUsername(username);
		user.setPassword(MD5Util.encrypt("111111"));
		user.setAvator(avator);
		user.setDeptid(Integer.parseInt(dept));
		user.setRoleid(Integer.parseInt(role));
		user.setSalt(linTools.getSalt());
		int result = userMapper.insert(user);
	}
	@BizLog("用户密码重置")
	@ResponseBody
	@RequestMapping(value="/resetpassword" , method=RequestMethod.POST)
	public String resetPassword(HttpServletRequest request){
		String id = request.getParameter("id");
		ShiroUser user = new ShiroUser();
		user.setId(Integer.parseInt(id));
		user.setPassword(MD5Util.encrypt("111111"));
		int result = userMapper.updateByPrimaryKeySelective(user);
		return ""+result;
	}
	
	@BizLog("删除用户")
	@ResponseBody
	@RequestMapping(value="/deleteuser" , method=RequestMethod.POST)
	public String deleteUser(HttpServletRequest request){
		System.out.println("deleteUser");
		String id = request.getParameter("id");
		int userresult = userMapper.deleteByPrimaryKey(Integer.parseInt(id));
		return ""+userresult;
	}
	
	@BizLog("用户信息修改")
	@ResponseBody
	@RequestMapping(value="/setuser" , method=RequestMethod.POST)
	public String setuser(HttpServletRequest request){
		System.out.println("setuser");
		ShiroUser user = new ShiroUser();
		user.setId(Integer.parseInt(request.getParameter("changeid")));
		user.setDeptid(Integer.parseInt(request.getParameter("changedept")));
		user.setRoleid(Integer.parseInt(request.getParameter("changerole")));
		int result = userMapper.updateByPrimaryKeySelective(user);
		return "" + result;
	}
	
	@BizLog("用户修改密码")
	@ResponseBody
	@RequestMapping(value="/rsetpassword" , method={RequestMethod.POST})
	public String setPassword(HttpServletRequest request){
		System.out.println("setpasswork post");
		String password = request.getParameter("password");
		String oldpassword = request.getParameter("oldpassword");
		System.out.println(oldpassword);
		System.out.println(password);
		ShiroUser user = userMapper.selectByPrimaryKey(Userinfo.getUser().getId());
		System.out.println(user.getPassword());
		System.out.println(MD5Util.encrypt(oldpassword));
		if (!user.getPassword().equals(MD5Util.encrypt(oldpassword))) {
			return Constant.RESULT_SET_PASSWORD_NO_MATCH;
		}

		user = new ShiroUser();         
		user.setId(Userinfo.getUser().getId());
		user.setPassword(MD5Util.encrypt(password));
		int result = userMapper.updateByPrimaryKeySelective(user);
		System.out.println("setpassword result:" + result);
		return ""+result;
	}
	
	@RequestMapping(value = "/logout" , method = {RequestMethod.GET})
	public String logout(HttpServletRequest request){
		try {
			LogManager.getInstance().saveLog(LogTaskFactory.getLogoutTimerTask(Userinfo.getUser().getId(), Userinfo.getUsername(),request.getRemoteHost() ));
			SecurityUtils.getSubject().logout();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("to logout");
		return "login2";
	}
	
	
}
