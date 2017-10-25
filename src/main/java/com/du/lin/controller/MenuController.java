package com.du.lin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.du.lin.bean.Menu;
import com.du.lin.dao.MenuMapper;
import com.google.gson.Gson;

@Controller
public class MenuController {
	@Autowired
	private MenuMapper menuMapper;
	@Autowired
	private Gson gson;
	
    @ResponseBody
    @RequestMapping(value = "/getmenulist" , method = RequestMethod.GET)
    public String getMenuList(){
    	System.out.println("getmenulist");
    	List<Menu> list = menuMapper.getAllMenu();
    	return gson.toJson(list);
    }
}
