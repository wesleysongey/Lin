package com.du.lin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.executor.ReuseExecutor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.du.lin.bean.Notice;
import com.du.lin.dao.NoticeMapper;
import com.du.lin.service.NoticeService;
import com.google.gson.Gson;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private Gson gson;
	
	@ResponseBody
	@RequestMapping(value="/noticelist" , method={RequestMethod.POST})
	public String noticeList(){
		 List<Notice> list = noticeService.getAllNotice();
		 return gson.toJson(list);
	}
	
	@ResponseBody
	@RequestMapping(value="/addnotice" , method={RequestMethod.POST})
	public String addNotice(HttpServletRequest request){
		String messagetype = request.getParameter("messagetype");
		String body = request.getParameter("body");
		if ("1".endsWith(messagetype)) {
			String recive = request.getParameter("recive");	
			noticeService.sendConmonNotice(body, recive);
		}else{
			noticeService.sendSystemNotice(body);
		}
		
		return null ;
	}
	
	
}
