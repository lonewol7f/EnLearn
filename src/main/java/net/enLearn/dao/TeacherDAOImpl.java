package net.enLearn.dao;

import net.enLearn.entity.Student;
import net.enLearn.entity.Teacher;
import net.enLearn.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TeacherDAOImpl implements TeacherDAO{



    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveOrUpdate(Teacher teacher) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(teacher);
    }

    @Override
    public Teacher getTeacherById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Teacher teacher = session.get(Teacher.class, id);
        return teacher;
    }

    @Override
    public void delete(int teacherID) {
        Session session = sessionFactory.getCurrentSession();
        Teacher teacher = getTeacherById(teacherID);
        User user = session.get(User.class,teacherID);

        session.remove(teacher);
        session.remove(user);
    }

}
