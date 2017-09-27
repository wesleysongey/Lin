package com.du.lin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.du.lin.utils.LinTools;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.du.lin.bean.Dept;
import com.du.lin.dao.DeptMapper;
import com.du.lin.shiro.ShiroKit;

@Controller
public class PageController {
	@Autowired
	private ShiroKit shiroKit;
	@Autowired
	private DeptMapper deptMapper;
	
	@RequestMapping(value="/test",method={RequestMethod.GET,RequestMethod.POST})
	public String test(HttpServletRequest request){
		System.out.println("test");
		
		return "test";
	}
	
	
	@RequestMapping(value="/",method={RequestMethod.GET,RequestMethod.POST})
	public String home(){
		System.out.println("home");
		 return "login2";
	}
	@RequestMapping(value="/login",method={RequestMethod.GET})
	public String login(){
		return "login";
	}
	@RequestMapping("hasrole")
	public String hasRole(HttpServletRequest request){
		if(shiroKit.hasRole("ROLE_ADMIN")){
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
	
	
	@RequestMapping(value="/welcome",method={RequestMethod.GET})
	public String welcome(){
		System.out.println("to welcome");
		return "welcome";
	}

	
	@RequestMapping(value = "/userpage" , method = {RequestMethod.GET})
	public String userpage(HttpServletRequest request){
		System.out.println("to userpage");
		List<Dept> list = deptMapper.getAllDept();
		request.setAttribute("depts", list);
		return "usergrid";
	}
	
	
	@RequestMapping(value="/setpassword",method={RequestMethod.GET})
	public String setPassword(HttpServletRequest request){
		System.out.println("setpassword");
		request.setAttribute("username", shiroKit.getUsername() );
		request.setAttribute("sex", shiroKit.getSex() );
		return "changepassword";
	}
	
	@RequestMapping(value="/deptpage",method={RequestMethod.GET})
	public String deptPage(HttpServletRequest request){
		System.out.println("deptpage");
		return "deptgrid";
	}
	
	@RequestMapping(value="/menupage",method={RequestMethod.GET})
	public String menuPage(HttpServletRequest request){
		System.out.println("menupage");
		return "menugrid";
	}
	
	@RequestMapping(value="/noticepage",method={RequestMethod.GET})
	public String noticePage(HttpServletRequest request){
		System.out.println("noticePage");
		return "noticegrid";
	}
	
	
	

	
}
