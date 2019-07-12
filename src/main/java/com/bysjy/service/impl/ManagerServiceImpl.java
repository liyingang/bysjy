package com.bysjy.service.impl;

import com.bysjy.mapper.AenMapper;
import com.bysjy.mapper.EnterpriseMapper;
import com.bysjy.mapper.ManagerMapper;
import com.bysjy.mapper.StudentMapper;
import com.bysjy.po.Enterprise;
import com.bysjy.po.Manager;
import com.bysjy.po.Student;
import com.bysjy.po.Val;
import com.bysjy.service.ManagerService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class ManagerServiceImpl implements ManagerService {
    private ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
    @Override
    public Manager getManager(String mId) {
        ManagerMapper managerMapper= (ManagerMapper) applicationContext.getBean("managerMapper");
        Manager manager=managerMapper.getManagerById(mId);
        return manager;
    }

    @Override
    public List<Student> getStudents() {
        StudentMapper studentMapper= (StudentMapper) applicationContext.getBean("studentMapper");
        return studentMapper.getStudents();
    }

    @Override
    public List<Enterprise> getEnterprises() {
        EnterpriseMapper enterpriseMapper= (EnterpriseMapper) applicationContext.getBean("enterpriseMapper");
        return enterpriseMapper.getEnterprises();
    }

    @Override
    public List<Val> getVal1() {
        AenMapper aenMapper= (AenMapper) applicationContext.getBean("aenMapper");
        return aenMapper.getVal1();
    }
    @Override
    public List<Val> getVal2() {
        AenMapper aenMapper= (AenMapper) applicationContext.getBean("aenMapper");
        return aenMapper.getVal2();
    }
}
