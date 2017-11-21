package com.du.lin.dao;

import com.du.lin.bean.OperationLeaveUser;

public interface OperationLeaveUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OperationLeaveUser record);

    int insertSelective(OperationLeaveUser record);

    OperationLeaveUser selectByPrimaryKey(Integer id);
    
    OperationLeaveUser selectByLeaveid(Integer leavid);

    int updateByPrimaryKeySelective(OperationLeaveUser record);

    int updateByPrimaryKey(OperationLeaveUser record);
}