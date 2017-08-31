package com.du.SpringBootTest1.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

public class ShiroKit {
	public static Subject getSubject(){
		return SecurityUtils.getSubject();
	}
	
	public static boolean hasRole(String Role){
		return getSubject().hasRole(Role);
	}
	
}
