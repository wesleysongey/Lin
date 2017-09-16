package com.du.lin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MenuController {
    @ResponseBody
    @RequestMapping(value = "/getmenu" , method = RequestMethod.GET)
    public String getMenu(){
        return "{\"text\":\"hello world!\"}";
    }
}
