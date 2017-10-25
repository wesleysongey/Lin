package com.du.lin.service;

public interface DeptService {
    public String getAllDeptJson(int page , int count);
    String deptListForAdd();
    String addDept(String deptName);
    String modifyDept(String id , String deptName);
    String deleteDept(String id);
}
