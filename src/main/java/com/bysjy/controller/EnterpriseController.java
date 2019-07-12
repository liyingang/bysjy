package com.bysjy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import com.bysjy.po.ResumeWithName;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.bysjy.po.Application;
import com.bysjy.po.Enterprise;
import com.bysjy.po.ResumeWithBLOBs;
import com.bysjy.service.EnterpriseService;
import com.bysjy.service.impl.EnterpriseServiceImpl;

@Controller
public class EnterpriseController {
	private EnterpriseService enterpriseService =new EnterpriseServiceImpl();
	private Enterprise enterprise=null;
	private Application application1=null;
	List<ResumeWithName> resumewithname=null;
	 int count=0;
	@RequestMapping(value = "/registerEnt.action",method = RequestMethod.GET)
    public String register(String eId,String pwd,String name,String tel,String legal,String email ,String addr,HttpSession session){
		if(eId==null&&pwd==null) {   return "registerEnt";}   
      Enterprise enterprise2=new Enterprise(eId, pwd, name, tel, legal, email, addr);
      int flag=enterpriseService.registerEnterprise(enterprise2);
      if(flag==1) {
    	  return "login";
      }
   	 return "registerEnt";
    }
	
	  @RequestMapping(value = "/login2.action",method = RequestMethod.POST)
	    public String login(String id,String pwd , HttpSession session, Model model){
	        id=id.trim();
	        pwd=pwd.trim();
	        enterprise = enterpriseService.findEnterPriseById(id);
	        if(enterprise != null){
	            session.setAttribute("Enterprise", enterprise);
	            return "redirect:enterprise/info.action";
	        }
	        model.addAttribute("msg", "账号或密码错误，请重新输入！");
	        return "login";
	    }

	    @RequestMapping(value = "/enterprise/info.action" )
	    public String showInfo(String id, HttpSession session){ 
	    	return "enterpriseInformation";
	       
	    }
	     @RequestMapping(value = "/enterprise/resources.action",method = RequestMethod.GET )
	    public String updateInfo(String pwd,String name,String tel,String legal,String email ,String addr,HttpSession session){
	    	if(pwd==null&&name==null&&tel==null) return "enterpriseResources";
	    	 Enterprise enterprise1=enterpriseGet(pwd,name,tel,legal,email,addr);
	    	 int flag=enterpriseService.updateEnterpriseInfo(enterprise1);
		        if(flag==1) {
		        	 enterprise.setPwd(pwd);
		        	 enterprise.setName(name);
			    	 enterprise.setTel(tel);
			    	 enterprise.setLegal(legal);
			    	 enterprise.setEmail(email);
			    	 enterprise.setAddr(addr);
			    	 session.setAttribute("Enterprise",enterprise);
			    	
		        }
		   return "enterpriseResources";
	    }
	     private Enterprise enterpriseGet(String pwd,String name,String tel,String legal,String email ,String addr) {
	    	 Enterprise enterprise1=new Enterprise();
	    	 enterprise1.seteId(enterprise.geteId());
	    	 if(pwd==null||pwd.equals(""))
	    		 enterprise1.setPwd(enterprise.getPwd());	
	    	 else
	    	  enterprise1.setPwd(pwd);
	    	 
	    	 if(name==null||name.equals(""))
	    	 enterprise1.setName(enterprise.getName());	
	    	 else
	    	 enterprise1.setName(name);
	    	 
	    	 if(tel==null||tel.equals(""))
	    	 enterprise1.setTel(enterprise.getTel());
	    	 else
	    	 enterprise1.setTel(tel);
	    	 
	    	 if(legal==null||legal.equals(""))
	    	  enterprise1.setLegal(enterprise.getLegal());
	    	 else
	    	 enterprise1.setLegal(legal);
	    	 
	    	 if(email==null||email.equals(""))
	    	  enterprise1.setEmail(enterprise.getEmail());
	    	 else
	    	 enterprise1.setEmail(email);
	    	 
	    	 if(addr==null||addr.equals(""))
	    	 enterprise1.setAddr(enterprise.getAddr());
	    	 else
	    	 enterprise1.setAddr(addr);
	    	 
	    	 return enterprise1;
	     }
	    @RequestMapping(value = "/enterprise/apply.action",method = RequestMethod.GET  )
	    public String insertApplication(String aId,String post,String education ,Integer salary,Integer num, String declaration,HttpSession session){
	    	if(aId==null&&post==null&&education==null) {   return "enterpriseApply";}
	    	application1=new Application(aId,enterprise.geteId(),post,education,salary,num,declaration);
	    	 int flag=enterpriseService.saveApplicationById(application1);
	    	 if(flag==1) {
	    		 session.setAttribute("Application", application1);
	    	 }
	    	 return "enterpriseApply";
	    }
	    @RequestMapping(value = "/enterprise/applyed.action" )
	    public String getApplyed(HttpSession session){
	    	
	    	resumewithname=enterpriseService.getResumes();
	    	if(resumewithname!=null)
	    	session.setAttribute("Applyed", resumewithname);
	        return "enterpriseApplyed";
	    }
	    
	    
	  
	    @RequestMapping(value = "/enterprise/delete.action",method = RequestMethod.GET )
	    public String deleteResume(String rId){
	    	enterpriseService.deleteResumeById(rId);
	        return "enterpriseApplyed";
	    }
	    
	    @RequestMapping(value = "/enterprise/out.action" )
	    public String out(HttpSession session){
	        session.invalidate();
	        return "redirect:/login.jsp";
	    }
}
