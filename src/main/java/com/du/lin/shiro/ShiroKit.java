package com.du.lin.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.du.lin.bean.Role;
import com.du.lin.bean.ShiroUser;
import com.du.lin.bean.User;
import com.du.lin.dao.DeptMapper;
import com.du.lin.dao.RoleMapper;
@Component
public class ShiroKit {
	@Autowired
	private DeptMapper deptMapper;
	@Autowired
	private RoleMapper roleMapper;
	
	public boolean hasRole(String role){
		return SecurityUtils.getSubject().hasRole(role);
	}
	
	public Subject getSubject(){
		return SecurityUtils.getSubject();
	}
	

	public User toUser(ShiroUser shiroUser){
		User user = new User();
		user.setAvator("0".equals(shiroUser.getAvator())?"女":"男");
		user.setId(shiroUser.getId());
		user.setDept(deptMapper.selectByPrimaryKey(shiroUser.getDeptid()).getName());
		user.setPassword(shiroUser.getPassword());
		Role role = roleMapper.selectByPrimaryKey(shiroUser.getRoleid());
		user.setRole(role.getRoles());
		user.setRoleTip(role.getTips());
		user.setSalt(shiroUser.getSalt());
		user.setUsername(shiroUser.getUsername());
		return user;
	}
	
	public String getUsername(){
		try {
			return getUser().getUsername();
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
	public User getUser(){
		try {
			return (User)getSubject().getPrincipal();			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public String getSex(){
		if (getUser()==null || "".equals(getUser().getAvator())) {
			return "unknow";
		}else{
			return getUser().getAvator().equals("女")?"girl":"boy";
		}
	}
}
