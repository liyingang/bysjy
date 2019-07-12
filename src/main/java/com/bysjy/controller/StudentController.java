package com.bysjy.controller;

import com.bysjy.po.Aen;
import com.bysjy.po.Other;
import com.bysjy.po.ResumeWithBLOBs;
import com.bysjy.po.Student;
import com.bysjy.service.EnterpriseService;
import com.bysjy.service.StudentService;
import com.bysjy.service.impl.EnterpriseServiceImpl;
import com.bysjy.service.impl.StudentServiceImpl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
public class StudentController {
    private StudentService studentService=new StudentServiceImpl();
    private Student student=null;
    private ResumeWithBLOBs resumewb=null;
    private List<Other> others=null;
    private EnterpriseService enterPriseService=new EnterpriseServiceImpl();
    @RequestMapping(value = "/login1.action",method = RequestMethod.POST)
    public String login(String id,String pwd , HttpSession session, Model model){
        id=id.trim();
        pwd=pwd.trim();
        student = studentService.findStudentById(id);
        if(student != null&&pwd.equals(student.getPwd())){
            session.setAttribute("Student", student);
            return "redirect:student/person.action";
        }
        model.addAttribute("msg", "账号或密码错误，请重新输入！");
        return "login";
    }

    @RequestMapping("/login.action")
    public String returnLogin(){
        return "login";
    }

    @RequestMapping(value = "/student/person.action" )
    public String getPerson(){
        return "studentPerson";
    }

    @RequestMapping(value = "/student/savePerson.action" ,method = RequestMethod.POST)
    public String savePerson(String tel,String birth,String home,HttpSession session)   {
        Student student1= studentGet(tel, birth, home);
        student1.setSshow("0");
        int flag=studentService.saveStudent(student1);
        if(flag==1){
            student.setTel(tel);
            student.setBirth(birth);
            student.setHome(home);
            //student.setEmployed(employed);
            student.setSshow("0");
            session.setAttribute("Student",student);
        }
        return "studentPerson";
    }

    private Student studentGet(String tel, String birth, String home) {
        Student student1=new Student();
        student1.setsId(student.getsId());
        student1.setTel(tel);
        student1.setBirth(birth);
        student1.setHome(home);
        //student1.setEmployed(employed);
        return student1;
    }

    @RequestMapping(value = "/student/showPerson.action" )
    public String showPerson(String tel,String birth,String home,HttpSession session){
        Student student1= studentGet(tel, birth, home);
        student1.setSshow("1");
        int flag=studentService.saveStudent(student1);
        if(flag==1){
            student.setTel(tel);
            student.setBirth(birth);
            student.setHome(home);
            //student.setEmployed(employed);
            student.setSshow("1");
            session.setAttribute("Student",student);
        }
        return "studentPerson";
    }

    @RequestMapping(value = "/student/resume.action" )
    public String getResume(HttpSession session){
        String id=student.getsId();
        resumewb=studentService.getResumeById(id);
        session.setAttribute("resumewb",resumewb);
        return "studentResume";
    }

    @RequestMapping(value = "/student/showResume.action" )
    public String showResume(String apply,String society,String person,HttpSession session){
        ResumeWithBLOBs resume1 = ResumeGet(apply, society, person);
        resume1.setSshow("1");
        int flag=studentService.saveResume(resume1);
        if(flag==1){
            resumewb.setApply(apply);
            resumewb.setSociety(society);
            resumewb.setPersonal(person);
            resumewb.setSshow("1");
            session.setAttribute("resumewb",resumewb);
        }
        return "studentResume";
    }

    private ResumeWithBLOBs ResumeGet(String apply, String society, String person) {
        ResumeWithBLOBs resume=new ResumeWithBLOBs();
        resume.setrId(resumewb.getrId());
        resume.setApply(apply);
        resume.setSociety(society);
        resume.setPersonal(person);
        return resume;
    }

    @RequestMapping(value = "/student/saveResume.action" )
    public String saveResume(String apply,String society,String person,HttpSession session){
        ResumeWithBLOBs resume1=ResumeGet(apply, society, person);
        resume1.setSshow("0");
        int flag=studentService.saveResume(resume1);
        if(flag==1){
            resumewb.setApply(apply);
            resumewb.setSociety(society);
            resumewb.setPersonal(person);
            resumewb.setSshow("0");
            session.setAttribute("resumewb",resumewb);
        }
        return "studentResume";
    }

    @RequestMapping(value = "/student/apply.action" )
    public String getApply(HttpSession session){
        List<Aen> aen=studentService.getAen();
        session.setAttribute("AEN",aen);
        return "studentApply";
    }

    @RequestMapping(value = "/student/applyOn.action" ,method = RequestMethod.POST)
    @ResponseBody
    public String getApplyOn(String aid,String num){
        int a=enterPriseService.devisNumById(aid,student.getsId(),num);
        if(a==1){
            return "OK";
        }else if(a==-1){
            return "BEEN";
        }else{
            return "false";
        }
    }

    @RequestMapping(value = "/student/other.action" )
    public String getOther(HttpSession session){
        others=studentService.getOther();
        session.setAttribute("others",others);
        return "studentOther";
    }

    @RequestMapping(value = "/student/otherOn.action" ,method = RequestMethod.GET)
    @ResponseBody
    public Other getOtherOn(String id, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        Other row=null;
        for(Other other:others){
            if(other.getsId().equals(id)){
                row=other;break;
            }
        }
        return row;
    }

    @RequestMapping(value = "/student/out.action" )
    public String out(HttpSession session){
        session.invalidate();
        return "redirect:/login.jsp";
    }
}
