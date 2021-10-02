package net.enLearn.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Kalana on 05/08/2021
 */

@Entity
@Table(name = "teacher")
@PrimaryKeyJoinColumn(name = "id")
public class Teacher extends User{

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "teacher", cascade = CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Notification> notifications;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "teacher", cascade = CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<SpecialQuiz> specialQuizList;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "teacher", cascade = CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<FreeQuiz> freeQuizList;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "teacher", cascade = CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Course> courseList;

    @Column(name = "licence")
    private String licence;

    @Column(name = "type")
    private String subject;


    public Teacher() {

    }

    public String getLicence() {
        return licence;
    }

    public void setLicence(String licence) {
        this.licence = licence;
    }

    public Teacher(String firstName, String email, String lastname,
                   String password, String DOB, int grade, String district,
                   String address, String image_path, String licence, String gender, String subject) {
        super(firstName, email, lastname, password, DOB, grade,
                district, address, image_path,gender);
        this.licence = licence;
        this.subject = subject;
    }

    public List<Notification> getNotifications() {
        return notifications;
    }

    public void setNotifications(List<Notification> notifications) {
        this.notifications = notifications;
    }

    public List<SpecialQuiz> getSpecialQuizList() {
        return specialQuizList;
    }

    public void setSpecialQuizList(List<SpecialQuiz> specialQuizList) {
        this.specialQuizList = specialQuizList;
    }

    public List<FreeQuiz> getFreeQuizList() {
        return freeQuizList;
    }

    public void setFreeQuizList(List<FreeQuiz> freeQuizList) {
        this.freeQuizList = freeQuizList;
    }

    public List<Course> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
}
