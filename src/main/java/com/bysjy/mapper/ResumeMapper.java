package com.bysjy.mapper;

import com.bysjy.po.Resume;
import com.bysjy.po.ResumeWithBLOBs;
import com.bysjy.po.ResumeWithName;

import java.util.List;

public interface ResumeMapper {
    int deleteByPrimaryKey(String rId);

    int insert(ResumeWithBLOBs record);

    int insertSelective(ResumeWithBLOBs record);

    ResumeWithBLOBs selectByPrimaryKey(String rId);
    ResumeWithBLOBs selectBySId(String id);
    List<ResumeWithName> select();
    List<ResumeWithName> selectById(String rId);
    int updateByPrimaryKeySelective(ResumeWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ResumeWithBLOBs record);

    int updateByPrimaryKey(Resume record);
}