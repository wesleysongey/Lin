package com.du.lin.service;

import java.util.List;

import com.du.lin.bean.Notice;
import com.du.lin.bean.ShowNotice;

public interface NoticeService {
	
	public List<Notice> getAllNotice();
	
	public List<ShowNotice> getAllShowNotice();
	
	public int sendSystemNotice(String body);
	
	public int sendConmonNotice(String body , String recive);
	
	
	
}
