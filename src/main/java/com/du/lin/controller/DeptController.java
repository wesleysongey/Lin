package com.du.lin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.du.lin.bean.Dept;
import com.du.lin.dao.DeptMapper;
import com.google.gson.Gson;

@Controller
public class DeptController {
	@Autowired
	private DeptMapper deptMapper;
	@Autowired
	private Gson gson;
	
	@ResponseBody
	@RequestMapping(value="/deptlist" , method={RequestMethod.POST})
	public String deptList(){
		System.out.println("get deptlist");
		List<Dept> list = deptMapper.getAllDept();
		System.out.println(gson.toJson(list));
		return gson.toJson(list);
	}
	
	@ResponseBody
	@RequestMapping(value="/adddept" , method={RequestMethod.POST})
	public String addDept(HttpServletRequest request){
		System.out.println("adddept");
		String deptName = request.getParameter("name");
		Dept dept = new Dept();
		dept.setName(deptName);
		int result = deptMapper.insert(dept);
		return result+"";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/setdept" , method={RequestMethod.POST})
	public String setDept(HttpServletRequest request){
		System.out.println("setdept");
		String deptid = request.getParameter("deptid");
		String deptname = request.getParameter("deptname");
		Dept dept = new Dept();
		dept.setId(Integer.parseInt(deptid));
		dept.setName(deptname);
		int result = deptMapper.updateByPrimaryKeySelective(dept);
		return "" + result;
	}
	
	@ResponseBody
	@RequestMapping(value="/deletedept" , method={RequestMethod.POST})
	public String deleteDept(HttpServletRequest request){
		System.out.println("deletedept");
		String deptid = request.getParameter("id");
		int result = deptMapper.deleteByPrimaryKey(Integer.parseInt(deptid));
		return "" + result;
	}
	
}
