package net.enLearn.entity;

import javax.persistence.*;

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

    @ManyToOne(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
    @JoinColumn(name = "teacher_id")
    private Teacher teacher;


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

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }
}

