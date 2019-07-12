package com.bysjy.controller;

import com.bysjy.po.Enterprise;
import com.bysjy.po.Manager;
import com.bysjy.po.Student;
import com.bysjy.po.Val;
import com.bysjy.service.EnterpriseService;
import com.bysjy.service.ManagerService;
import com.bysjy.service.StudentService;
import com.bysjy.service.impl.EnterpriseServiceImpl;
import com.bysjy.service.impl.ManagerServiceImpl;
import com.bysjy.service.impl.StudentServiceImpl;
import com.bysjy.util.MySQLDatabaseBackup;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class AdminController {
    private Manager manager;
    private ManagerService managerService=new ManagerServiceImpl();
    private StudentService studentService=new StudentServiceImpl();
    private EnterpriseService enterPriseService=new EnterpriseServiceImpl();
    private List<Student> students;
    private List<Enterprise> enterprises;

    @RequestMapping(value = "/login3.action",method = RequestMethod.POST)
    public String login(String id, String pwd , HttpSession session, Model model){
        id=id.trim();
        pwd=pwd.trim();
        manager = managerService.getManager(id);
        if(manager != null&&pwd.equals(manager.getPwd())){
            session.setAttribute("Manager", manager);
            return "redirect:manager/stuInfo.action";
        }
        model.addAttribute("msg", "账号或密码错误，请重新输入！");
        return "login";
    }

    @RequestMapping(value = "/manager/stuInfo.action" )
    public String getPerson(HttpSession session){
        students=managerService.getStudents();
        session.setAttribute("students",students);
        return "stuInfo";
    }

    @RequestMapping(value = "/manager/entAppInfo.action" )
    public String entAppInfo(HttpSession session){
        enterprises=managerService.getEnterprises();
        session.setAttribute("enterprises",enterprises);
        return "entAppInfo";
    }

    @RequestMapping(value = "/manager/backup.action" )
    public String backupI(HttpSession session){
        String basePath="D:/backupDatabase";
        String[] list=new File(basePath).list();
        session.setAttribute("backupName",list);
        return "backup";
    }

    @RequestMapping(value = "/manager/statistic.action" )
    public String statistic(HttpSession session){
        List<Val> val1s=managerService.getVal1();
        List<Val> val2s=managerService.getVal2();
        session.setAttribute("val1s",val1s);
        session.setAttribute("val2s",val2s);
        return "statistic";
    }

    @RequestMapping(value = "/manager/stuInfoSee.action" )
    @ResponseBody
    public Student SeePerson(String id){
        Student student=new Student();
        for(Student student1:students){
            if(student1.getsId().equals(id)){
                student=student1;
            }
        }
        return student;
    }

    @RequestMapping(value = "/manager/entEdit.action" )
    @ResponseBody
    public Enterprise entEdit(String id){
        Enterprise enterprise=new Enterprise();
        for(Enterprise enterprise1:enterprises){
            if(enterprise1.geteId().equals(id)){
                enterprise=enterprise1;

            }
        }
        return enterprise;
    }

    @RequestMapping(value = "/manager/update.action" )
    @ResponseBody
    public String  updateStudent(Student student){
        if(student.getSex().equals("1"))student.setSex("男");
        else student.setSex("女");
        if(student.getSshow().equals("1"))student.setSshow("0");
        else student.setSshow("1");
        int rows=studentService.saveStudent(student);
        if(rows > 0){
            return "OK";
        }else{
            return "FAIL";
        }
    }

    @RequestMapping(value = "/manager/entUpdate.action" )
    @ResponseBody
    public String  updateEnterprise(Enterprise enterprise){
        if(enterprise.getRefirm().equals("1"))enterprise.setRefirm("1");
        else enterprise.setRefirm("0");
        int rows=enterPriseService.saveEnter(enterprise);
        if(rows > 0){
            return "OK";
        }else{
            return "FAIL";
        }
    }

    @RequestMapping(value = "/manager/delete.action" )
    @ResponseBody
    public String  deleteStudent(String id){
        int rows=studentService.deleteStudent(id);
        if(rows > 0){
            return "OK";
        }else{
            return "FAIL";
        }
    }

    @RequestMapping(value = "/manager/entDelete.action" )
    @ResponseBody
    public String  deleteEnterprise(String id){
        int rows=enterPriseService.deleteEnter(id);
        if(rows > 0){
            return "OK";
        }else{
            return "FAIL";
        }
    }

    @RequestMapping(value = "/manager/bbackup.action" ,method = RequestMethod.POST)
    @ResponseBody
    public String  backup(){
        try {
            Date date=new Date();
            DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss");
            String name="backup-"+dateFormat.format(date)+".sql";
            String IP="localhost";
            String username="root";
            String password="root";
            String savePath="D:/backupDatabase";
            String dataBase="graduates";
            if (MySQLDatabaseBackup.exportDatabaseTool(IP, username, password, savePath, name, dataBase)) {
                return "OK";
            } else {
                return "FALSE";
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return "FALSE";
    }

    @RequestMapping(value = "/manager/rebackup.action",method = RequestMethod.POST)
    @ResponseBody
    public String  rebackup(String mess){
        try {
            MySQLDatabaseBackup.restore(mess);
                return "OK";
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "FALSE";
    }

    @RequestMapping(value = "/manager/out.action" )
    public String out(HttpSession session){
        session.invalidate();
        return "redirect:/login.jsp";
    }
}
