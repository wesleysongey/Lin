package com.du.lin.dao;

import com.du.lin.bean.Role;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);
    
    Role selectByRoleTip(String roles);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}