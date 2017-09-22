package com.du.lin.dao;

import org.springframework.stereotype.Repository;

import com.du.lin.bean.LoginLog;
@Repository
public interface LoginLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LoginLog record);

    int insertSelective(LoginLog record);

    LoginLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LoginLog record);

    int updateByPrimaryKeyWithBLOBs(LoginLog record);

    int updateByPrimaryKey(LoginLog record);
}