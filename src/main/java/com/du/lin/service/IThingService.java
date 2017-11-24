package com.du.lin.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.du.lin.bean.Thing;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lin
 * @since 2017-11-24
 */
public interface IThingService extends IService<Thing> {
	
	String getShowJson(int page , int count);
}
