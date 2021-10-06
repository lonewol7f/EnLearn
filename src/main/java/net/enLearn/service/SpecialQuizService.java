package net.enLearn.service;

import net.enLearn.entity.SpecialQuiz;
import net.enLearn.entity.Student;

import java.util.List;

/**
 * Created by Osini Kithma
 * 8/26/21
 */
public interface SpecialQuizService {

    List<SpecialQuiz> getSpecialQuizList();
    void saveOrUpdateSpecialQuiz(SpecialQuiz specialQuiz);
    void deleteSpecialQuiz(int id);
    List<SpecialQuiz> getSpecialQuizByTeacherId(int id);
    SpecialQuiz getSpecialQuizByVideoId(int id);
    SpecialQuiz getLastSpecialQuiz();
    SpecialQuiz getSpecialQuizByQuizId(int id);

    //marks-and-access - many-to-many relationship

    void saveOrUpdateStudentMarks(int studentId, int quizId, int marks, boolean status);
    void deleteStudentMarks(int student_id,int quiz_id);
    List<Student> getStudentByQuizId(int quiz_id);
    Student getStudentMarksByQuizId(int student_id,int quiz_id);
}