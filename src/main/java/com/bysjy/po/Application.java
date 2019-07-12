package com.bysjy.po;

public class Application extends ApplicationKey {
    private String post;

    private String education;

    private Integer salary;

    public Application() {

    }

    public Application(String aId, String eId, String post, String education, Integer salary, Integer num, String declaration) {
        super(aId, eId);
        this.post = post;
        this.education = education;
        this.salary = salary;
        this.num = num;
        this.declaration = declaration;
    }

    private Integer num;

    private String declaration;

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post == null ? null : post.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
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
        this.declaration = declaration == null ? null : declaration.trim();
    }

    @Override
    public String toString() {
        return "Application{" +
                "post='" + post + '\'' +
                ", education='" + education + '\'' +
                ", salary=" + salary +
                ", num=" + num +
                ", declaration='" + declaration + '\'' +
                '}';
    }
}