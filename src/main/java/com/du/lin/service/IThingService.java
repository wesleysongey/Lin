package com.du.lin.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.du.lin.bean.Thing;


public interface IThingService extends IService<Thing> {
	String getShowJson(int page , int count);
}