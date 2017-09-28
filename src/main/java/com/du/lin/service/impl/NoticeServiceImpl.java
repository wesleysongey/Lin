package com.du.lin.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.du.lin.bean.Notice;
import com.du.lin.bean.ShowNotice;
import com.du.lin.constant.state.NoticeType;
import com.du.lin.dao.NoticeMapper;
import com.du.lin.service.NoticeService;
import com.du.lin.shiro.ShiroKit;
import com.du.lin.utils.BeanUtil;
import com.du.lin.utils.Userinfo;
@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeMapper noticeMapper;
	@Autowired
	private ShiroKit shiroKit;
	@Autowired
	private BeanUtil beanUtil;
	
	@Override
	public List<Notice> getAllNotice() {
		return noticeMapper.getAllNotice();
	}

	@Override
	public int sendSystemNotice(String body) {
		
		Notice notice = new Notice();
		notice.setBody(body);
		notice.setCreatetime(new Date());
		notice.setSenduserid(Userinfo.getUser().getId());
		notice.setType(NoticeType.System.getName());

		return noticeMapper.insertSelective(notice);
	}

	@Override
	public int sendConmonNotice(String body, String recive) {
		
		return 0;
	}

	@Override
	public List<ShowNotice> getAllShowNotice() {
		List<Notice> list = this.getAllNotice();
		List<ShowNotice> showList = new ArrayList<ShowNotice>();
		for(Notice notice : list){
			showList.add(beanUtil.toShowNotice(notice));
		}
		return showList;
	}



}
