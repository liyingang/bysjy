package com.bysjy.service;

import com.bysjy.po.Enterprise;
import com.bysjy.po.Manager;
import com.bysjy.po.Student;
import com.bysjy.po.Val;

import java.util.List;

public interface ManagerService {
    Manager getManager(String mId);
    List<Student> getStudents();
    List<Enterprise> getEnterprises();
    List<Val> getVal1();
    List<Val> getVal2();
}
