package net.enLearn.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Osini Kithma
 * 8/24/21
 */

@Entity
@Table(name = "special_quiz")
public class SpecialQuiz {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "marks_limit")
    private int marksLimit;

    @Column(name = "attempt")
    private int attempt;

    @Column(name = "mcq_link")
    private String mcqLink;

    @Column(name = "e_and_s_link")
    private String eAndSLink;

    @Column(name = "submit_link")
    private String submitLink;

    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH})
    @JoinColumn(name = "teacher_id")
    private Teacher teacher;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH})
    @JoinTable(name = "special_quiz_student",
                joinColumns = @JoinColumn(name = "quiz_id"),
                inverseJoinColumns = @JoinColumn(name = "student_id"))
    private List<Student> studentList;

    public SpecialQuiz() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMarksLimit() {
        return marksLimit;
    }

    public void setMarksLimit(int marksLimit) {
        this.marksLimit = marksLimit;
    }

    public int getAttempt() {
        return attempt;
    }

    public void setAttempt(int attempt) {
        this.attempt = attempt;
    }

    public String getMcqLink() {
        return mcqLink;
    }

    public void setMcqLink(String mcqLink) {
        this.mcqLink = mcqLink;
    }

    public String geteAndSLink() {
        return eAndSLink;
    }

    public void seteAndSLink(String eAndSLink) {
        this.eAndSLink = eAndSLink;
    }

    public String getSubmitLink() {
        return submitLink;
    }

    public void setSubmitLink(String submitLink) {
        this.submitLink = submitLink;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public List<Student> getStudentList() {
        return studentList;
    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }

}

