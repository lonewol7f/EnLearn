package net.enLearn.dao;

import net.enLearn.entity.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
