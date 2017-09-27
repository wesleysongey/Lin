package com.du.lin.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.du.lin.bean.Notice;
import com.du.lin.constant.state.NoticeType;
import com.du.lin.dao.NoticeMapper;
import com.du.lin.service.NoticeService;
import com.du.lin.shiro.ShiroKit;
@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeMapper noticeMapper;
	@Autowired
	private ShiroKit shiroKit;
	
	@Override
	public List<Notice> getAllNotice() {
		return noticeMapper.getAllNotice();
	}

	@Override
	public int sendSystemNotice(String body) {
		Notice notice = new Notice();
		notice.setBody(body);
		notice.setCreatetime(new Date());
		notice.setSenduserid(shiroKit.getUser().getId());
		notice.setType(NoticeType.System.getName());
		return noticeMapper.insertSelective(notice);
	}

	@Override
	public int sendConmonNotice(String body, String recive) {
		// TODO Auto-generated method stub
		return 0;
	}



}
