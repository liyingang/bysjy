package com.bysjy.po;

public class ApplicationKey {
    private String aId;

    private String eId;

    public ApplicationKey() {
    }

    public ApplicationKey(String aId, String eId) {
        this.aId = aId;
        this.eId = eId;
    }

    public String getaId() {
        return aId;
    }

    public void setaId(String aId) {
        this.aId = aId == null ? null : aId.trim();
    }

    public String geteId() {
        return eId;
    }

    public void seteId(String eId) {
        this.eId = eId == null ? null : eId.trim();
    }
}