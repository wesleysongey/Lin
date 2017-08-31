package com.du.lin.shiro;


import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.CredentialsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;

import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import com.du.lin.bean.Role;
import com.du.lin.bean.User;
import com.du.lin.dao.RoleMapper;
import com.du.lin.dao.UserMapper;



public class ShiroDbRealm extends AuthorizingRealm{
//	
	@Resource
	private UserMapper userMapper;
	@Resource
	private RoleMapper roleMapper;
	
	/**
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		User user = (User) principals.getPrimaryPrincipal();
		Role role = roleMapper.selectByPrimaryKey(user.getUsername());
		info.addRole(role.getRoles());
		return info;
	}
	/**
	 * 登录认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationtoken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authenticationtoken;
		User user = userMapper.selectByUsername(token.getUsername());
		if (user == null){
			throw new CredentialsException();
		}
		SimpleAuthenticationInfo authinfo = new SimpleAuthenticationInfo(user, 
				user.getPassword(), ByteSource.Util.bytes(user.getSalt()), getName());
		return authinfo;
	}


	
}
