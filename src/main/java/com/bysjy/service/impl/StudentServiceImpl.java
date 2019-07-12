package com.bysjy.service.impl;

import com.bysjy.mapper.AenMapper;
import com.bysjy.mapper.ResumeMapper;
import com.bysjy.mapper.StudentMapper;
import com.bysjy.po.*;
import com.bysjy.service.StudentService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class StudentServiceImpl implements StudentService {
    ApplicationContext application = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
    StudentMapper studentMapper;
    ResumeMapper resumeMapper;
    @Override
    public Student findStudentById(String Id) {
        studentMapper = (StudentMapper) application.getBean("studentMapper");
        Student student=studentMapper.selectByPrimaryKey(Id);
        return student;
    }

    @Override
    public int saveStudent(Student student) {
        studentMapper = (StudentMapper) application.getBean("studentMapper");
        return studentMapper.updateByPrimaryKeySelective(student);
    }

    @Override
    public ResumeWithBLOBs getResumeById(String id) {
        resumeMapper= (ResumeMapper) application.getBean("resumeMapper");
        return resumeMapper.selectBySId(id);
    }

    @Override
    public int saveResume(ResumeWithBLOBs resumewb) {
        resumeMapper= (ResumeMapper) application.getBean("resumeMapper");
        return resumeMapper.updateByPrimaryKeySelective(resumewb);
    }

    @Override
    public List<Aen> getAen() {
        AenMapper ae= (AenMapper) application.getBean("aenMapper");
        return ae.getAE();
    }

    @Override
    public List<Other> getOther() {
        AenMapper ae= (AenMapper) application.getBean("aenMapper");
        return ae.getOther();
    }

    @Override
    public int deleteStudent(String id) {
        return studentMapper.deleteByPrimaryKey(id);
    }


}
