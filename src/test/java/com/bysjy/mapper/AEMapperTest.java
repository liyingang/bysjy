package com.bysjy.mapper;

import com.bysjy.po.Aen;
import com.bysjy.po.Other;
import com.bysjy.po.Val;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class AEMapperTest {
    AenMapper ae;
    ApplicationContext application;
    @Test
    public void testAen() {
        application = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        ae = (AenMapper) application.getBean("aenMapper");
        List<Aen> e = ae.getAE();
        System.out.println(e);
    }
    @Test
    public void testOther(){
        application = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        ae = (AenMapper) application.getBean("aenMapper");
        List<Other> others=ae.getOther();
        System.out.println(others);
    }

    @Test
    public void testVal(){
        application = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
        ae = (AenMapper) application.getBean("aenMapper");
        List<Val> val1s=ae.getVal1();
        List<Val> val2s=ae.getVal2();
        System.out.println(val1s);
        System.out.println(val2s);
    }
}
