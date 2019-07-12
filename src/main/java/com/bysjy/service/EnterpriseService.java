package com.bysjy.service;

import com.bysjy.po.Application;
import com.bysjy.po.Enterprise;
import com.bysjy.po.ResumeWithBLOBs;
import com.bysjy.po.ResumeWithName;

import java.util.List;

public interface EnterpriseService {
    public int devisNumById(String aid,String sid,String num);
    public int saveEnter(Enterprise enterprise);
    public int deleteEnter(String id);
    public Enterprise findEnterPriseById(String Id);
    public int updateEnterpriseInfo(Enterprise enterprise);
    public int saveApplicationById(Application application);
    public int registerEnterprise(Enterprise enterprise);
    public List<ResumeWithName> getResumes();
    public List<ResumeWithName> getResumesById(String id);

    public int deleteResumeById(String rId);
}
