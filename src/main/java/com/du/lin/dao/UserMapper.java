package com.du.lin.dao;

import com.du.lin.bean.ShiroUser;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShiroUser record);

    int insertSelective(ShiroUser record);

    ShiroUser selectByPrimaryKey(Integer id);

    ShiroUser selectByUsername(String username);

    int updateByPrimaryKeySelective(ShiroUser record);

    int updateByPrimaryKey(ShiroUser record);
}