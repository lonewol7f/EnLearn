package net.enLearn.entity;

import java.sql.Blob;

public class Discount {

    //private int Id;
    private int admin_id;
    private double discount;
    private String teacher_name;
    private String course;
    private Blob image;
    private String description;
    private int grade;
    private String title;


    //constructor
    public Discount(int id, String title, double discount, String teacher_name, String course, int grade, String description, Blob image){
        this.admin_id = id;
        this.title = title;
        this.discount =discount;
        this.teacher_name = teacher_name;
        this.course = course;
        this.grade = grade;
        this.description = description;
        this.image = image;
    }

    public Discount(String lable, double amount, String Teacher, String sub, int grade, String description, Blob image){
        this.title = lable;
        this.discount =amount;
        this.teacher_name = Teacher;
        this.course = sub;
        this.grade = grade;
        this.description = description;
        this.image = image;
    }


    //Setters and getters
    public int getAdmin_id(){
        return admin_id;
    }

    public void setAdmin_id(int AdminID){ this.admin_id = AdminID; }

    public String getTitle(){
        return title;
    }

    public void setTitle(String lable){
        this.title = lable;
    }

    public double getDiscount(){
        return discount;
    }

    public void setDiscount(double amount){ this.discount = amount; }

    public void setTeacher_name(String teacher){
        this.teacher_name = teacher;
    }

    public String getTeacher_name(){
        return teacher_name;
    }

    public void setCourse(String sub){
        this.course = sub;
    }

    public String getCourse(){
        return course;
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

    public void setImage(Blob image){
        this.image = image;
    }

    public Blob getImage(){
        return image;
    }
}
