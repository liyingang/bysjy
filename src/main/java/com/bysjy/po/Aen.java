package com.bysjy.po;

public class Aen {
    private String aId;
    private String eId;
    private String post;
    private String name;
    private String tel;

    @Override
    public String toString() {
        return "Aen{" +
                "aId='" + aId + '\'' +
                ", eId='" + eId + '\'' +
                ", post='" + post + '\'' +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", education='" + education + '\'' +
                ", salary=" + salary +
                ", num=" + num +
                ", declaration='" + declaration + '\'' +
                '}';
    }

    public String getaId() {
        return aId;
    }

    public void setaId(String aId) {
        this.aId = aId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    private String education;

    private Integer salary;

    private Integer num;

    private String declaration;

    public String geteId() {
        return eId;
    }

    public void seteId(String eId) {
        this.eId = eId;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public Integer getSalary() {
        return salary;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getDeclaration() {
        return declaration;
    }

    public void setDeclaration(String declaration) {
        this.declaration = declaration;
    }
}
