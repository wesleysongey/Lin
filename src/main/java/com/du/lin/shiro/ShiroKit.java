package com.du.lin.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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
		user.setAvator(shiroUser.getAvator()==null?"":shiroUser.getAvator());
		user.setId(shiroUser.getId());
		user.setDept(deptMapper.selectByPrimaryKey(shiroUser.getDeptid()));
		user.setPassword(shiroUser.getPassword());
		user.setRole(roleMapper.selectByPrimaryKey(shiroUser.getRoleid()));
		user.setSalt(shiroUser.getSalt());
		user.setUsername(shiroUser.getUsername());
		return user;
	}
	
}
