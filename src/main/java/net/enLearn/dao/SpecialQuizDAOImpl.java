package net.enLearn.dao;

import net.enLearn.entity.RecordedVideo;
import net.enLearn.entity.SpecialQuiz;
import net.enLearn.entity.Student;
import net.enLearn.entity.Teacher;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Osini Kithma
 * 8/25/21
 */

@Repository
public class SpecialQuizDAOImpl implements SpecialQuizDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<SpecialQuiz> getSpecialQuizList() {

        // get current session
        Session session = sessionFactory.getCurrentSession();

        Query<SpecialQuiz> specialQuizQuery = session.createQuery("from SpecialQuiz",SpecialQuiz.class);
        List<SpecialQuiz> specialQuizList = specialQuizQuery.getResultList();

        return specialQuizList;
    }

    @Override
    public void saveOrUpdateSpecialQuiz(SpecialQuiz specialQuiz) {

        // get current session
        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(specialQuiz);
    }

    @Override
    public void deleteSpecialQuiz(int id) {

        // get current session
        Session session = sessionFactory.getCurrentSession();

        SpecialQuiz specialQuiz = session.get(SpecialQuiz.class,id);
        specialQuiz.getTeacher().getSpecialQuizList().remove(id);

        session.delete(specialQuiz);

    }

    @Override
    public List<SpecialQuiz> getSpecialQuizByTeacherId(int id) {

        // get current session
        Session session = sessionFactory.getCurrentSession();

        Teacher teacher = session.get(Teacher.class,id);
        List<SpecialQuiz> specialQuizList = teacher.getSpecialQuizList();

        return specialQuizList;
    }

    @Override
    public SpecialQuiz getSpecialQuizByVideoId(int id) {

        // get current session
        Session session = sessionFactory.getCurrentSession();

        RecordedVideo recordedVideo = session.get(RecordedVideo.class,id);
        SpecialQuiz specialQuiz = recordedVideo.getSpecialQuiz();

        return specialQuiz;
    }

    //Methods for marks-and-access : ManyToMany
    @Override
    public void saveOrUpdateStudentMarks(Student student) {

        // get current session
        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(student);

    }

    @Override
    public void deleteStudentMarks(int student_id, int quiz_id) {

        // get current session
        Session session = sessionFactory.getCurrentSession();

        Student student = session.get(Student.class,student_id);
        student.getSpecialQuizList().remove(student_id);
        SpecialQuiz specialQuiz = session.get(SpecialQuiz.class,quiz_id);
        specialQuiz.getStudentList().remove(quiz_id);

        session.delete(student_id);
        session.delete(quiz_id);

    }

    @Override
    public List<Student> getStudentByQuizId(int quiz_id) {

        // get current session
        Session session = sessionFactory.getCurrentSession();

        SpecialQuiz specialQuiz = session.get(SpecialQuiz.class,quiz_id);
        List<Student> studentList = specialQuiz.getStudentList();

        return studentList;
    }

    @Override
    public Student getStudentMarksByQuizId(int student_id, int quiz_id) {

        // get current session
        Session session = sessionFactory.getCurrentSession();

        SpecialQuiz specialQuiz = session.get(SpecialQuiz.class,quiz_id);
//        Student student = specialQuiz.getStudentList().get(SpecialQuiz.class,student_id);

        return null;
    }
}
