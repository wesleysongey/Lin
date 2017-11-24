package com.du.lin.service.impl;


import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.du.lin.bean.Thing;
import com.du.lin.dao.ThingMapper;
import com.du.lin.service.IThingService;
import com.du.lin.utils.JqgridUtil;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lin
 * @since 2017-11-24
 */
@Service
public class ThingServiceImpl extends ServiceImpl<ThingMapper, Thing> implements IThingService {
	@Autowired
	private JqgridUtil jqgridUtil;
	
	@Override
	public String getShowJson(int page, int count) {

        List<Thing> all = baseMapper.selectList(null);
        int toIndex = count * page;
        if (all.size() < toIndex) {
            toIndex = all.size();
        }
        List<Thing> list = all.subList(count * (page - 1), toIndex);
        return jqgridUtil.getJson(list, page + "", all.size() , count);
    
	}

}
