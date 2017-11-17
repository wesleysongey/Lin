package com.du.lin.dao;

import java.util.List;

import com.du.lin.bean.Leave;

public interface LeaveMapper {
    int deleteByPrimaryKey(Integer id);

    List<Leave> getListByUserid(Integer userid);
    
    int insert(Leave record);

    int insertSelective(Leave record);

    Leave selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Leave record);

    int updateByPrimaryKey(Leave record);
}