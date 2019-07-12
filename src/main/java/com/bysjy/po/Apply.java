package com.bysjy.po;

public class Apply {
    private String aId;
    private String sId;

    @Override
    public String toString() {
        return "Apply{" +
                "aId='" + aId + '\'' +
                ", sId='" + sId + '\'' +
                '}';
    }

    public String getaId() {
        return aId;
    }

    public void setaId(String aId) {
        this.aId = aId;
    }

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }
}
