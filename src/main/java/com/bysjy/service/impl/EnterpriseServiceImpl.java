package com.bysjy.service.impl;

import com.bysjy.mapper.ApplicationMapper;
import com.bysjy.mapper.EnterpriseMapper;
import com.bysjy.mapper.ResumeMapper;
import com.bysjy.po.*;
import com.bysjy.service.EnterpriseService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class EnterpriseServiceImpl implements EnterpriseService {
    ApplicationContext application = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");
    ApplicationMapper applicationMapper;
    EnterpriseMapper enterprisemapper;
    @Override
    public int devisNumById( String aid,String sid,String num) {
        applicationMapper= (ApplicationMapper) application.getBean("applicationMapper");
        Apply apply=applicationMapper.searchApply(aid,sid);
        Application app=new Application();
        if(apply==null){
            apply=new Apply();
            apply.setaId(aid);
            apply.setsId(sid);
            applicationMapper.insertApply(apply);
            app.setaId(aid);app.setNum(Integer.parseInt(num)-1);
            return applicationMapper.updateByPrimaryKeySelective(app);
        }
        return -1;
    }

    @Override
    public int saveEnter(Enterprise enterprise) {
        EnterpriseMapper enterpriseMapper= (EnterpriseMapper) application.getBean("enterpriseMapper");
        return enterpriseMapper.updateByPrimaryKeySelective(enterprise);
    }

    @Override
    public int deleteEnter(String id) {
        EnterpriseMapper enterpriseMapper= (EnterpriseMapper) application.getBean("enterpriseMapper");
        return enterpriseMapper.deleteByPrimaryKey(id);
    }
    @Override
    public Enterprise findEnterPriseById(String Id) {
        enterprisemapper =(EnterpriseMapper)application.getBean("enterpriseMapper");
        Enterprise enterprise=enterprisemapper.selectByPrimaryKey(Id);
        return enterprise;
    }

    @Override
    public int updateEnterpriseInfo(Enterprise enterprise) {
        enterprisemapper =(EnterpriseMapper)application.getBean("enterpriseMapper");
        return enterprisemapper.updateByPrimaryKey(enterprise);
    }



    @Override
    public int saveApplicationById(Application application1) {
        applicationMapper=(ApplicationMapper)application.getBean("applicationMapper");

        return applicationMapper.insert(application1);
    }

    @Override
    public int registerEnterprise(Enterprise enterprise) {
        enterprisemapper =(EnterpriseMapper)application.getBean("enterpriseMapper");
        int enterprise1=enterprisemapper.insert(enterprise);
        return enterprise1;
    }

    @Override
    public List<ResumeWithName> getResumes() {
        ResumeMapper resumemapper=(ResumeMapper)application.getBean("resumeMapper");
        return resumemapper.select();
    }

    @Override
    public List<ResumeWithName> getResumesById(String id) {
        ResumeMapper resumemapper=(ResumeMapper)application.getBean("resumeMapper");
        return resumemapper.selectById(id);
    }

    @Override
    public int deleteResumeById(String rId) {
        ResumeMapper resumemapper=(ResumeMapper)application.getBean("resumeMapper");
        return resumemapper.deleteByPrimaryKey(rId);
    }
}
