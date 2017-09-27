package com.du.lin.service;

import java.util.List;

import com.du.lin.bean.Notice;

public interface NoticeService {
	
	public List<Notice> getAllNotice();
	
	public int sendSystemNotice(String body);
	
	public int sendConmonNotice(String body , String recive);
	
}
