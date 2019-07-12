package com.bysjy.po;

public class Enterprise {
    private String eId;

    private String pwd;

    private String name;

    private String tel;

    public Enterprise() {
    }

    public Enterprise(String eId, String pwd, String name, String tel, String legal, String email, String addr) {
        this.eId = eId;
        this.pwd = pwd;
        this.name = name;
        this.tel = tel;
        this.legal = legal;
        this.email = email;
        this.addr = addr;
    }

    private String legal;

    private String email;

    private String addr;

    private String refirm;

    public String geteId() {
        return eId;
    }

    public void seteId(String eId) {
        this.eId = eId == null ? null : eId.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getLegal() {
        return legal;
    }

    public void setLegal(String legal) {
        this.legal = legal == null ? null : legal.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr == null ? null : addr.trim();
    }

    public String getRefirm() {
        return refirm;
    }

    public void setRefirm(String refirm) {
        this.refirm = refirm == null ? null : refirm.trim();
    }

    @Override
    public String toString() {
        return "StudentMapper{" +
                "eId='" + eId + '\'' +
                ", pwd='" + pwd + '\'' +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", legal='" + legal + '\'' +
                ", email='" + email + '\'' +
                ", addr='" + addr + '\'' +
                ", refirm='" + refirm + '\'' +
                '}';
    }
}