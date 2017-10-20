package com.du.lin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.du.lin.annotation.BizLog;
import com.du.lin.bean.Dept;
import com.du.lin.constant.Constant;
import com.du.lin.dao.DeptMapper;
import com.du.lin.dao.UserMapper;
import com.google.gson.Gson;

@Controller
public class DeptController {
	@Autowired
	private DeptMapper deptMapper;
	@Autowired
	private Gson gson;
	@Autowired
	private UserMapper userMapper;
	
	
	@ResponseBody
	@RequestMapping(value="/deptlistforadd" , method={RequestMethod.POST})
	public String deptListForAdd(){
		List<Dept> list = deptMapper.getAllDept();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < list.size(); i++) {
			sb.append(list.get(i).getId() + ":" + list.get(i).getName() + ";");
		}
		return sb.substring(0, sb.length()-1);
	}
	
	@ResponseBody
	@RequestMapping(value="/deptlist" , method={RequestMethod.POST})
	public String deptList(){
		List<Dept> list = deptMapper.getAllDept();
		return gson.toJson(list);
	}
	@BizLog("添加部门")
	@ResponseBody
	@RequestMapping(value="/adddept" , method={RequestMethod.POST})
	public String addDept(HttpServletRequest request){
		String deptName = request.getParameter("name");
		Dept dept = deptMapper.selectByName(deptName);
		if (dept != null) {
			return Constant.ERROR_ADD_DEPT_ALREADY_EXISTS;
		}
		dept = new Dept();
		dept.setName(deptName);
		int result = deptMapper.insert(dept);
		return result+"";
	}
	
	@BizLog("修改部门信息")
	@ResponseBody
	@RequestMapping(value="/setdept" , method={RequestMethod.POST})
	public String setDept(HttpServletRequest request){
		String deptid = request.getParameter("deptid");
		String deptname = request.getParameter("deptname");
		Dept dept = new Dept();
		dept.setId(Integer.parseInt(deptid));
		dept.setName(deptname);
		int result = deptMapper.updateByPrimaryKeySelective(dept);
		return "" + result;
	}
	@BizLog("删除部门")
	@ResponseBody
	@RequestMapping(value="/deletedept" , method={RequestMethod.POST})
	public String deleteDept(HttpServletRequest request){
		String deptid = request.getParameter("id");
		if ("1".endsWith(deptid)) {
			return Constant.ERROR_CAN_NOT_DELETE_DEFAULT_DEPT;
		}
		int setUserResult = userMapper.updateByDeptidSelective(Integer.parseInt(deptid));
		int result = deptMapper.deleteByPrimaryKey(Integer.parseInt(deptid));
		return "" + result;
	}
	

	
	
}
