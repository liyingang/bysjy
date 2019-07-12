package com.bysjy.po;

public class Other {
    private String sId;

    private String name;
    private String cName;
    private String post;
    private String salary;

    @Override
    public String toString() {
        return "[{" +
                "\"sId\":\"" + sId + "\"" +
                ",\" name\":\"" + name + "\"" +
                ", \"cName\":\"" + cName + "\"" +
                ", \"post\":\"" + post + "\"" +
                ",\" salary\":\"" + salary + "\"" +
                ", \"tel\":\"" + tel + "\"" +
                ", \"sex\":\"" + sex + "\"" +
                ", \"age\":\"" + age + "\"" +
                ", \"edu\":\"" + edu + "\"" +
                ", \"professional\":\"" + professional + "\"" +
                ", \"sshow\":\"" + sshow + "\"" +
                ", \"declaration\":\"" + declaration + "\"" +
                ", \"society\":\"" + society + "\"" +
                ", \"personal\":\"" + personal + "\"" +
                "}]";
    }

    private String tel;
    private String sex;
    private String age;
    private String edu;
    private String professional;
    private String sshow;


    private String declaration;
    private String society;
    private String personal;
    public String getsId() {
        return sId;
    }
    public String getSshow() {
        return sshow;
    }
    public String getDeclaration() {
        return declaration;
    }

    public void setDeclaration(String declaration) {
        this.declaration = declaration;
    }

    public void setSshow(String sshow) {
        this.sshow = sshow;
    }
    public void setsId(String sId) {
        this.sId = sId;
    }
    public String getSociety() {
        return society;
    }

    public void setSociety(String society) {
        this.society = society;
    }

    public String getProfessional() {
        return professional;
    }

    public void setProfessional(String professional) {
        this.professional = professional;
    }

    public String getPersonal() {
        return personal;
    }

    public void setPersonal(String personal) {
        this.personal = personal;
    }

    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

}
