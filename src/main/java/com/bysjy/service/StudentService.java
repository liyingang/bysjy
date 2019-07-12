package com.bysjy.service;

import com.bysjy.po.*;

import java.util.List;

public interface StudentService {
    public Student findStudentById(String Id);
    public int saveStudent(Student student);
    public ResumeWithBLOBs getResumeById(String id);
    public int saveResume(ResumeWithBLOBs resumewb);
    public List<Aen> getAen();
    public List<Other> getOther();
    public int deleteStudent(String id);
}
