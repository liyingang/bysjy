package com.bysjy.mapper;

import com.bysjy.po.Student;

import java.util.List;

public interface StudentMapper {
    int deleteByPrimaryKey(String sId);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String sId);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
    List<Student> getStudents();
}