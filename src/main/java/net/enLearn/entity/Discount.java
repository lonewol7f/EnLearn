package net.enLearn.entity;

import java.awt.*;

public class Discount {

    private int Id;
    private int adminID;
    private String lable;
    private double amount;
    private String Teacher;
    private String sub;
    private int grade;
    private String description;
    private Image image;

    //constructor
    public Discount(int id, String lable, double amount, String Teacher, String sub, int grade, String description){
        this.Id = id;
        this.lable = lable;
        this.amount =amount;
        this.Teacher = Teacher;
        this.sub = sub;
        this.grade = grade;
        this.description = description;
    }

    public Discount(String lable, double amount, String Teacher, String sub, int grade, String description){
        this.lable = lable;
        this.amount =amount;
        this.Teacher = Teacher;
        this.sub = sub;
        this.grade = grade;
        this.description = description;
    }

    //Setters and getters
    public int getId(){
        return Id;
    }

    public void setId(int id){ this.Id = id; }

    public int getAdminIDId(){
        return adminID;
    }

    public void setAdminID(int AdminID){ this.adminID = AdminID; }

    public String getLable(){
        return lable;
    }

    public void setLable(String lable){
        this.lable = lable;
    }

    public double getAmount(){
        return amount;
    }

    public void setAmount(double amount){ this.amount = amount; }

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

    public void setImage(Image image){
        this.image = image;
    }

    public Image getImage(){
        return image;
    }
}
