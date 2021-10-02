package net.enLearn.entity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Kalana on 05/08/2021
 */

@Entity
@Table(name = "student")
@PrimaryKeyJoinColumn(name = "id")
public class Student extends User{

    @Column(name = "school")
    private String school;


    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH})
    @JoinTable(name = "special_quiz_student",
            joinColumns = @JoinColumn(name = "student_id"),
            inverseJoinColumns = @JoinColumn(name = "quiz_id"))
    private List<SpecialQuiz> specialQuizList;


    public Student(String firstName, String email, String lastname,
                   String password, String DOB, int grade, String district,
                   String address, String image_path, String school, String gender) {
        super(firstName, email, lastname, password, DOB, grade, district, address, image_path,gender);
        this.school = school;
    }

    public Student() {

    }


    public List<SpecialQuiz> getSpecialQuizList() {
        return specialQuizList;
    }

    public void setSpecialQuizList(List<SpecialQuiz> specialQuizList) {
        this.specialQuizList = specialQuizList;
    }
}
