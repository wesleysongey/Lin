package com.du.lin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.du.lin.shiro.ShiroKit;

@Controller
public class PageController {
	@RequestMapping(value="/",method={RequestMethod.GET,RequestMethod.POST})
	public String home(){
		System.out.println("home");
		 return "home";
	}
	@RequestMapping(value="/login",method={RequestMethod.GET})
	public String login(){
		return "login";
	}
	@RequestMapping("hasrole")
	public String hasRole(HttpServletRequest request){
		if(ShiroKit.hasRole("ROLE_ADMIN")){
			return "hasrole";
		}
		request.setAttribute("msg", "没有权限");
		return "error";
	}
	
	@RequestMapping(value="/login2",method={RequestMethod.GET})
	public String login2(){
		System.out.println("to login2");
		return "login2";
	}
	
	@RequestMapping(value="/index1",method={RequestMethod.GET})
	public String index1(){
		System.out.println("to index1");
		return "index1";
	}
	
	
}
