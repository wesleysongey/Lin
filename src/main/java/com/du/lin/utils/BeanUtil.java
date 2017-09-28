package com.du.lin.utils;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;

import com.du.lin.bean.Notice;
import com.du.lin.bean.Role;
import com.du.lin.bean.ShiroUser;
import com.du.lin.bean.ShowNotice;
import com.du.lin.bean.User;
import com.du.lin.constant.state.NoticeType;
import com.du.lin.dao.DeptMapper;
import com.du.lin.dao.NoticeMapper;
import com.du.lin.dao.RoleMapper;
import com.du.lin.dao.UserMapper;

import scala.annotation.meta.setter;

public class BeanUtil {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private NoticeMapper noticeMapper;
	@Autowired
	private DeptMapper deptMapper;
	@Autowired
	private RoleMapper roleMapper;
	
	public ShowNotice toShowNotice(Notice notice){
		
		String message = "";
		if (notice.getBody().trim().length() > 40) {
			message = notice.getBody().substring(0, 39)+ "..." ;
		}else{
			message = notice.getBody();
		}
		
		ShowNotice result = new ShowNotice();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd HH:mm");
		result.setBody(notice.getBody());
		result.setMessage(message + "<br/><small class=\"text-muted\"> " + sdf.format(notice.getCreatetime()) + " </small>");
		if (NoticeType.System.getName().endsWith(notice.getType())) {
			result.setAvatar("systemavatar");
			result.setSendUsername("系统通知");
		}else{
			ShiroUser user = userMapper.selectByPrimaryKey(notice.getSenduserid());
			result.setAvatar(user.getAvator().endsWith("0")?"girl":"boy");
			result.setSendUsername(user.getUsername());
		}
		
//		result.setCreatetime(sdf.format(notice.getCreatetime()));
		return result;
	}
	
	public User toUser(ShiroUser shiroUser){
		User user = new User();
		user.setAvator("0".equals(shiroUser.getAvator())?"女":"男");
		user.setId(shiroUser.getId());
		user.setDept(deptMapper.selectByPrimaryKey(shiroUser.getDeptid()).getName());
		user.setPassword(shiroUser.getPassword());
		Role role = roleMapper.selectByPrimaryKey(shiroUser.getRoleid());
		user.setRole(role.getRoles());
		user.setRoleTip(role.getTips());
		user.setSalt(shiroUser.getSalt());
		user.setUsername(shiroUser.getUsername());
		return user;
	}
	
	
	
}
