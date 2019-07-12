package com.bysjy.po;

public class ResumeWithBLOBs extends Resume {
    private String society;

    private String personal;

    public String getSociety() {
        return society;
    }

    public void setSociety(String society) {
        this.society = society == null ? null : society.trim();
    }

    public String getPersonal() {
        return personal;
    }

    public void setPersonal(String personal) {
        this.personal = personal == null ? null : personal.trim();
    }

    @Override
    public String toString() {
        return "ResumeWithBLOBs{" +
                "society='" + society + '\'' +
                ", personal='" + personal + '\'' +
                "} " + super.toString();
    }
}