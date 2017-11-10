package com.du.lin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.du.lin.bean.Menu;
import com.du.lin.dao.MenuMapper;
import com.du.lin.service.MenuService;
import com.du.lin.utils.Userinfo;
@Service
public class MenuServiceImpl implements MenuService{
    @Autowired
	private MenuMapper mapper;
	
	@Override
	public List<Menu> getUserMenu() {
		List<Menu> list = mapper.selectMenuByRoleid(Userinfo.getRoleid());
		return list;
	}

}
