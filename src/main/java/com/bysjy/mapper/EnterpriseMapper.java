package com.bysjy.mapper;

import com.bysjy.po.Enterprise;

import java.util.List;

public interface EnterpriseMapper {
    int deleteByPrimaryKey(String eId);

    int insert(Enterprise record);

    int insertSelective(Enterprise record);

    Enterprise selectByPrimaryKey(String eId);

    int updateByPrimaryKeySelective(Enterprise record);

    int updateByPrimaryKey(Enterprise record);
    List<Enterprise> getEnterprises();
}