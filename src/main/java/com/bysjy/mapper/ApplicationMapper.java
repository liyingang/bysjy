package com.bysjy.mapper;

import com.bysjy.po.Application;
import com.bysjy.po.ApplicationKey;
import com.bysjy.po.Apply;
import org.apache.ibatis.annotations.Param;

public interface ApplicationMapper {
    int deleteByPrimaryKey(ApplicationKey key);

    int insert(Application record);

    int insertSelective(Application record);

    Application selectByPrimaryKey(ApplicationKey key);

    int updateByPrimaryKeySelective(Application record);

    int updateByPrimaryKeyWithBLOBs(Application record);

    int updateByPrimaryKey(Application record);
    Apply searchApply(@Param("aId")String aId,@Param("sId") String sId);
    int insertApply(Apply apply);
}