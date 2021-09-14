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
    public SpecialQuiz getSpecialQuizByVideoId(int id) {
        return specialQuizDAO.getSpecialQuizByVideoId(id);
    }

    //Methods for marks-and-access : ManyToMany
    @Override
    public void saveOrUpdateStudentMarks(Student student) {
        specialQuizDAO.saveOrUpdateStudentMarks(student);

    }

    @Override
    public void deleteStudentMarks(int student_id, int quiz_id) {
        specialQuizDAO.deleteStudentMarks(student_id, quiz_id);

    }

    @Override
    public List<Student> getStudentByQuizId(int quiz_id) {
        return specialQuizDAO.getStudentByQuizId(quiz_id);
    }

    @Override
    public Student getStudentMarksByQuizId(int student_id, int quiz_id) {
        return specialQuizDAO.getStudentMarksByQuizId(student_id, quiz_id);
    }
}
