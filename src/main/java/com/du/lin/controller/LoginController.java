package com.du.lin.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.du.lin.bean.ShiroUser;
import com.du.lin.bean.User;
import com.du.lin.shiro.ShiroKit;
import com.du.lin.utils.LinTools;
import com.du.lin.utils.MD5Util;


@Controller
public class LoginController {
	@Autowired
	private LinTools linTools;

	@RequestMapping(value="/login",method={RequestMethod.POST})
	public String login(HttpServletRequest request , ShiroUser user ){
		Subject subject = SecurityUtils.getSubject();
		user.setPassword(MD5Util.encrypt(user.getPassword()));
		if (linTools.getKaptchaSwich()) {
			String kaptchaRecevied = request.getParameter("kaptcha");
			//用户输入的验证码的值  
			String kaptchaExpected = (String) request.getSession().getAttribute(  
					com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);  
			//校验验证码是否正确  
			if (kaptchaRecevied == null || !kaptchaRecevied.equals(kaptchaExpected)) {  
				request.setAttribute("msg", "验证码错误");
				return "error";//返回验证码错误  
			}  

		}

		UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
		try {
			subject.login(token);
		} catch (AuthenticationException e) {
			System.out.println("登录失败");
			request.setAttribute("msg", "账号或密码错误");
			return "error";
		}

		request.setAttribute("username" , user.getUsername());
		request.setAttribute("tip" , ((User)subject.getPrincipal()).getRoleTip());

		return "index1";
	}
}
