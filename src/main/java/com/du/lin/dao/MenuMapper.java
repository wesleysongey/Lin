package com.du.lin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.du.lin.bean.Menu;
@Repository
public interface MenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer id);

    List<Menu> getAllMenu();
    
    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}