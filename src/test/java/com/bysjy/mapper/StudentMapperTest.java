package com.bysjy.mapper;

import com.bysjy.po.Student;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class StudentMapperTest {
	StudentMapper sm;
	ApplicationContext application;
	@Test
	public void test() {
		application = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
		sm = (StudentMapper) application.getBean("studentMapper");
		List<Student> students=sm.getStudents();
		System.out.println(students);
	}



}
