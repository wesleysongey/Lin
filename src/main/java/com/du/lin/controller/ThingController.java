package com.du.lin.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.du.lin.bean.Thing;
import com.du.lin.service.IThingService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


@Controller
@RequestMapping("/thing")
public class ThingController {
	@Autowired
	private IThingService service;
	@RequestMapping("")
	public String thing(HttpServletRequest request){
		return "thingpage";
	} 
	
	@ResponseBody
	@RequestMapping("list")
	public String list(HttpServletRequest request){
		String page = request.getParameter("page"); // 取得当前页数,注意这是jqgrid自身的参数
		String rows = request.getParameter("rows"); // 取得每页显示行数，,注意这是jqgrid自身的参数
		return service.getShowJson(Integer.parseInt(page) , Integer.parseInt(rows));
	}
	@ResponseBody
	@RequestMapping(value = "operation" , method={RequestMethod.POST})
	public String operationThing(HttpServletRequest request , Thing thing){
		System.out.println(thing.toString());
		boolean result = false;
		String oper = request.getParameter("oper");
		switch (oper) {
		case "edit":
			result = service.updateById(thing);
			break;
		case "del":
			result = service.deleteById(thing.getId());
			break;
		case "add":
			result = service.insert(thing);
			break;
		}
		request.setAttribute("errorCode", "1111");
		return "aaaa";
	}
	

	
}

