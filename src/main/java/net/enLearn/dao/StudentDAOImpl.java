package net.enLearn.dao;

import net.enLearn.entity.Course;
import net.enLearn.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Kalana on 10/09/2021
 */

@Repository
public class StudentDAOImpl implements StudentDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void registerUser(Student student) {
        Session session = sessionFactory.getCurrentSession();

        int studentId = (int) session.save(student);

        Query query = session.createSQLQuery("INSERT INTO user_authorities (user_id, authority_id) " +
                "VALUES (:studentId, 1)");
        query.setParameter("studentId", studentId);
        query.executeUpdate();
    }

    @Override
    public List<Course> getEnrolledCoursesByStudentId(int id) {
        Session session = sessionFactory.getCurrentSession();
        Student student = session.get(Student.class, id);

        List<Course> courseList = student.getCourseList();

        return courseList;
    }

    @Override
    public Student getStudentById(int id) {
        Session session = sessionFactory.getCurrentSession();

        Student student = session.get(Student.class, id);

        return student;
    }

    @Override
    public void updateStudent(Student student) {
        Session session = sessionFactory.getCurrentSession();

        session.update(student);
    }
}
