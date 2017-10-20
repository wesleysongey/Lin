package com.du.lin.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.du.lin.annotation.BizLog;

import com.du.lin.bean.ShowLog;
import com.du.lin.constant.Constant;
import com.du.lin.service.LoginLogService;

import com.du.lin.service.impl.OperationLogServiceImpl;

import com.du.lin.utils.ExcelUtil;
import com.google.gson.Gson;

@Controller
public class LogController extends BaseController{
	@Resource
	private LoginLogService loginLogService;
	
	@Resource
	private OperationLogServiceImpl operationLogService;
	
	@Autowired
	private Gson gson;
	@Autowired
	private ExcelUtil excelUtil;
	
	
	@ResponseBody
	@RequestMapping(value="/loginloglist" , method={RequestMethod.POST})
	private String loginLogList(HttpServletRequest request){
		
		System.out.println("adfa");
		List<ShowLog> logs = loginLogService.getAllShowLoginLog();
		return gson.toJson(logs);
	}
	
	@ResponseBody
	@RequestMapping(value="/operationloglist" , method={RequestMethod.POST})
	private String operationLogList(HttpServletRequest request){
		System.out.println((operationLogService == null) + "");
		return gson.toJson(operationLogService.getAllShowLog());
	}
	
	
	@RequestMapping(value="/downloginlogexcel" , method={RequestMethod.GET} )
	private String downLoginLogExcel(HttpServletRequest request , HttpServletResponse response, @RequestParam("type") int type){
		
		if (SecurityUtils.getSubject().hasRole("ROLE_ADMIN")) {
			downloadFile(response, excelUtil.getExcel(type));		
			return null;
		}
		request.setAttribute("msg", "没有权限");
		request.setAttribute("status", Constant.ERROR_CODE_NO_PERMISION);
		return "error";
		
	}
	
	@ResponseBody
	@RequestMapping(value="/clearloginlog" , method={RequestMethod.POST})
	private String clearLoginLog(HttpServletRequest request , HttpServletResponse response, @RequestParam("type") int type){
		if (!SecurityUtils.getSubject().hasRole("ROLE_ADMIN")) {
			return Constant.ERROR_CODE_NO_PERMISION;
		}
		String result = "999";
		if (type == 1) {
			result = loginLogService.deleteALLLoginLog();
		}else if(type == 2){
			result = operationLogService.deleteALLLog();
		}
		return result;
	}
	
}
