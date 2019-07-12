package com.bysjy.mapper;

import com.bysjy.po.ResumeWithBLOBs;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ResumeMapperTest {
    ApplicationContext applicationContext=new ClassPathXmlApplicationContext("spring/applicationContext.xml");
    ResumeMapper resumeMapper;
    @Test
    public void testGet(){
        resumeMapper= (ResumeMapper) applicationContext.getBean("resumeMapper");
        ResumeWithBLOBs resumewb= resumeMapper.selectBySId("20190400001");
        System.out.println(resumewb);

    }
}
