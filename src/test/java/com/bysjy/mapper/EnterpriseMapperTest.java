package com.bysjy.mapper;

import com.bysjy.po.Enterprise;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class EnterpriseMapperTest {
	EnterpriseMapper em;
	ApplicationContext application;
	@Test
	public void test() {
		application = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
		em = (EnterpriseMapper) application.getBean("enterpriseMapper");
		Enterprise e = em.selectByPrimaryKey("201904001");
		System.out.println(e);
	}



}
