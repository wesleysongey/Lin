package com.du.lin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.du.lin.bean.Dept;
import com.du.lin.bean.Role;
import com.du.lin.bean.ShiroUser;
import com.du.lin.bean.User;
import com.du.lin.dao.DeptMapper;
import com.du.lin.dao.RoleMapper;
import com.du.lin.dao.UserMapper;
import com.du.lin.shiro.ShiroKit;
import com.du.lin.utils.Constant;
import com.du.lin.utils.LinTools;
import com.du.lin.utils.MD5Util;
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
	
	
	@ResponseBody
	@RequestMapping(value="/userlist" , method={RequestMethod.POST})
	public String list(){
		List<ShiroUser> userList = userMapper.getUserList();
		List<User> users = new ArrayList<User>();
		for (ShiroUser user : userList) {
			users.add(shiroKit.toUser(user));
		}
		return gson.toJson(users);
	}
	@ResponseBody
	@RequestMapping(value="/adduser" , method={RequestMethod.POST})
	public void addUser(HttpServletRequest request ){
		System.out.println("addUser");
		if (!shiroKit.hasRole("ROLE_ADMIN")) {
			System.out.println("没有权限");
			return;
		}
		
		String username = request.getParameter("username");
		String dept = request.getParameter("dept");
		String role = request.getParameter("roleTip");
		ShiroUser user = new ShiroUser();
		user.setUsername(username);
		user.setPassword(MD5Util.encrypt("111111"));
		user.setSalt(linTools.getSalt());
		
		//添加角色
		if (role == null||"".endsWith(role)
			) {
			user.setRoleid(Constant.DEFAULT_ROLE_ID);
		}else {
			Role roles = roleMapper.selectByRoleTip(role);
			if (roles != null) {
				user.setRoleid(roles.getId());
			}else{
				user.setRoleid(Constant.DEFAULT_ROLE_ID);
			}
		}
		
		//添加部门
		if ("".endsWith(dept)||
				dept == null) {
			user.setDeptid(Constant.DEFAULT_DEPT_ID);
		}else {
			Dept depts= deptMapper.selectByName(dept);
			if (depts == null) {
				user.setDeptid(depts.getId());
			}
		}
		
		user.setAvator("");
		int i = userMapper.insert(user);
	}
	
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
	
	@ResponseBody
	@RequestMapping(value="/deleteuser" , method=RequestMethod.POST)
	public String deleteUser(HttpServletRequest request){
		System.out.println("deleteUser");
		String id = request.getParameter("id");
		int userresult = userMapper.deleteByPrimaryKey(Integer.parseInt(id));
		return ""+userresult;
	}
	
	
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
	
	@ResponseBody
	@RequestMapping(value="/setpassword" , method=RequestMethod.POST)
	public String setPassword(HttpServletRequest request){
		System.out.println("setpasswork post");
		String password = request.getParameter("password");
		ShiroUser user = new ShiroUser();
		user.setId(shiroKit.getUser().getId());
		user.setPassword(MD5Util.encrypt(password));
		int result = userMapper.updateByPrimaryKeySelective(user);
		System.out.println("setpassword result:" + result);
		return ""+result;
	}
	
	
}
