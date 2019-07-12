package com.bysjy.po;

public class Resume {
    private String rId;

    private String sId;

    private String apply;

    private String sshow;


    public String getrId() {
        return rId;
    }

    public void setrId(String rId) {
        this.rId = rId == null ? null : rId.trim();
    }

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId == null ? null : sId.trim();
    }

    public String getApply() {
        return apply;
    }

    public void setApply(String apply) {
        this.apply = apply == null ? null : apply.trim();
    }

    public String getSshow() {
        return sshow;
    }

    public void setSshow(String sshow) {
        this.sshow = sshow == null ? null : sshow.trim();
    }

    @Override
    public String toString() {
        return "Resume{" +
                "rId='" + rId + '\'' +
                ", sId='" + sId + '\'' +
                ", apply='" + apply + '\'' +
                ", sshow='" + sshow + '\'' +
                '}';
    }
}