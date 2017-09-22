package com.du.lin.dao;

import com.du.lin.bean.ShiroUser;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShiroUser record);
   
    int insertSelective(ShiroUser record);

    List<ShiroUser> getUserList();
    
    ShiroUser selectByPrimaryKey(Integer id);

    ShiroUser selectByUsername(String username);

    int updateByPrimaryKeySelective(ShiroUser record);
    
    int updateByDeptidSelective(Integer deptid);

    int updateByPrimaryKey(ShiroUser record);
}