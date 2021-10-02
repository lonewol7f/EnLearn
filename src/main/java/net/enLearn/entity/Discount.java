package net.enLearn.entity;

import javax.persistence.*;

@Entity
@Table(name = "discount")
public class Discount {


    //private int Id;
    @Id
    @Column(name = "id")
    //@GeneratedValue(strategy = GenerationType.AUTO)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;


    @Column(name = "admin_id")
    private int admin_id;

    @Column(name = "title")
    private String title;

    @Column(name = "discount")
    private int discount;

    @Column(name = "teacher_name")
    private String teacher_name;

    @Column(name = "course")
    private String course;

    @Column(name = "grade")
    private int grade;

    @Column(name = "description")
    private String description;

    @Transient
    @Column(name = "image")
    private byte[] image;

    //constructor
    public Discount(int admin_id, int discount, String teacher_name, String course, byte[] image, String description, int grade, String title){
        this.admin_id = admin_id;
        this.title = title;
        this.discount =discount;
        this.teacher_name = teacher_name;
        this.course = course;
        this.grade = grade;
        this.description = description;
        this.image = image;
    }

    //constructor
    public Discount(int id,int admin_id,int discount,String teacher_name,String course,byte[] image,String description,int grade,String title){
        this.id = id;
        this.admin_id = admin_id;
        this.title = title;
        this.discount =discount;
        this.teacher_name = teacher_name;
        this.course = course;
        this.grade = grade;
        this.description = description;
        this.image = image;
    }

    //default Constructor
    public Discount() {}


    //Setters and getters
    public int getId(){return id;}

    public void setId(int id){this.id = id;}

    public int getAdmin_id(){
        return admin_id;
    }

    public void setAdmin_id(int admin_id){ this.admin_id = admin_id; }

    public String getTitle(){
        return title;
    }

    public void setTitle(String title){
        this.title = title;
    }

    public int getDiscount(){
        return discount;
    }

    public void setDiscount(int discount){ this.discount = discount; }

    public void setTeacher_name(String teacher_name){
        this.teacher_name = teacher_name;
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

    public void setImage(byte[] image){ this.image = image; }

    public byte[] getImage(){ return image; }
}