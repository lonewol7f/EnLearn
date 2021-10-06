package net.enLearn.service;

import net.enLearn.dao.SpecialQuizDAO;
import net.enLearn.entity.SpecialQuiz;
import net.enLearn.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Osini Kithma
 * 8/26/21
 */

@Service
public class SpecialQuizServiceImpl implements SpecialQuizService{

    @Autowired
    private SpecialQuizDAO specialQuizDAO;

    @Override
    @Transactional
    public List<SpecialQuiz> getSpecialQuizList(){
        return specialQuizDAO.getSpecialQuizList();
    }

    @Override
    @Transactional
    public void saveOrUpdateSpecialQuiz(SpecialQuiz specialQuiz){
        specialQuizDAO.saveOrUpdateSpecialQuiz(specialQuiz);
    }

    @Override
    @Transactional
    public void deleteSpecialQuiz(int id){
        specialQuizDAO.deleteSpecialQuiz(id);
    }

    @Override
    @Transactional
    public List<SpecialQuiz> getSpecialQuizByTeacherId(int id){
        return specialQuizDAO.getSpecialQuizByTeacherId(id);
    }

    @Override
    @Transactional
    public SpecialQuiz getSpecialQuizByVideoId(int id) {
        return specialQuizDAO.getSpecialQuizByVideoId(id);
    }

    //Methods for marks-and-access : ManyToMany
    @Override
    @Transactional
    public void saveOrUpdateStudentMarks(int studentId, int quizId, int marks, boolean status) {
        specialQuizDAO.saveOrUpdateStudentMarks(studentId, quizId, marks, status);

    }

    @Override
    @Transactional
    public void deleteStudentMarks(int student_id, int quiz_id) {
        specialQuizDAO.deleteStudentMarks(student_id, quiz_id);

    }

    @Override
    @Transactional
    public List<Student> getStudentByQuizId(int quiz_id) {
        return specialQuizDAO.getStudentByQuizId(quiz_id);
    }

    @Override
    @Transactional
    public Student getStudentMarksByQuizId(int student_id, int quiz_id) {
        return specialQuizDAO.getStudentMarksByQuizId(student_id, quiz_id);
    }

    @Override
    @Transactional
    public SpecialQuiz getLastSpecialQuiz() {
        return specialQuizDAO.getLastSpecialQuiz();
    }

    @Override
    @Transactional
    public SpecialQuiz getSpecialQuizByQuizId(int id) {
        return specialQuizDAO.getSpecialQuizByQuizId(id);
    }
}