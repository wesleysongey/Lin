package com.du.lin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.du.lin.bean.OperationLog;
@Repository
public interface OperationLogMapper {
    int deleteByPrimaryKey(Integer id);
    
    List<OperationLog> selectAll();
    
    int deleteAll();

    int insert(OperationLog record);

    int insertSelective(OperationLog record);

    OperationLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OperationLog record);

    int updateByPrimaryKey(OperationLog record);
}