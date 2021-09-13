package net.enLearn.entity;

import javax.persistence.*;
import java.util.List;



@Entity
@Table(name = "student")
@PrimaryKeyJoinColumn(name = "id")
public class Student extends User{


    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH})
    @JoinTable(name = "special_quiz_student",
            joinColumns = @JoinColumn(name = "student_id"),
            inverseJoinColumns = @JoinColumn(name = "quiz_id"))
    private List<SpecialQuiz> specialQuizList;


    public List<SpecialQuiz> getSpecialQuizList() {
        return specialQuizList;
    }

    public void setSpecialQuizList(List<SpecialQuiz> specialQuizList) {
        this.specialQuizList = specialQuizList;
    }
}
