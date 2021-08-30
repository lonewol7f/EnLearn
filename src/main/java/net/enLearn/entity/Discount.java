package net.enLearn.entity;

public class Discount {

    private int Id;
    private String lable;
    private double amount;
    private String Teacher;
    private String sub;
    private int grade;
    private String description;

    public Discount(){} //constructor

    //Setters and getters
    public int getId(){
        return Id;
    }

    public void setId(int id){
        this.Id = ++id;
    }

    public String getLable(){
        return lable;
    }

    public void setLable(String lable){
        this.lable = lable;
    }

    public double getAmount(){
        return amount;
    }

    public void setTeacher(String teacher){
        this.Teacher = teacher;
    }

    public String getTeacher(){
        return Teacher;
    }

    public void setSub(String sub){
        this.sub = sub;
    }

    public String getSub(){
        return sub;
    }

    public void setGrade(int grade){
        this.grade = grade;
    }

    public int getGrade(){
        return grade;
    }

    public void setDescription(String Description){
        this.description = Description;
    }

    public String getDescription(){
        return description;
    }
}
