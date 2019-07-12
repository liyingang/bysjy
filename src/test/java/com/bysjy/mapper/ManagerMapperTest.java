package com.bysjy.mapper;

import com.bysjy.po.Aen;
import com.bysjy.po.Manager;
import com.bysjy.po.Other;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class ManagerMapperTest {
    ManagerMapper mm;
    ApplicationContext application;
    @Test
    public void testManager() {
        application = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        mm = (ManagerMapper) application.getBean("managerMapper");
        Manager manager = mm.getManagerById("admin");
        System.out.println(manager.getmId()+"\n"+manager.getPwd());
    }

}
