package com.du.SpringBootTest1.dao;

import org.springframework.cache.annotation.Cacheable;

import com.du.SpringBootTest1.bean.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);
    
    @Cacheable("usercache2")
    User selectByUsername(String username);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}