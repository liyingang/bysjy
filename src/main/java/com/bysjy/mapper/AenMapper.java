package com.bysjy.mapper;

import com.bysjy.po.Aen;
import com.bysjy.po.Other;
import com.bysjy.po.Val;

import java.util.List;

public interface AenMapper {
    public List<Aen> getAE();
    public List<Other> getOther();
    public List<Val> getVal1();
    public List<Val> getVal2();
}
