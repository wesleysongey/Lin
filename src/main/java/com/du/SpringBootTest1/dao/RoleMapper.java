package com.du.SpringBootTest1.dao;

import com.du.SpringBootTest1.bean.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(String username);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(String username);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}