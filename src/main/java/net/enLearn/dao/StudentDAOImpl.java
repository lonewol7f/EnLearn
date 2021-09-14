package net.enLearn.dao;

import net.enLearn.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by Osini Kithma
 * 9/13/21
 */

@Repository
public class StudentDAOImpl implements StudentDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Student getStudentById(int id) {

        Session session = sessionFactory.getCurrentSession();
        Student student = session.get(Student.class,id);

        return student;
    }
}
