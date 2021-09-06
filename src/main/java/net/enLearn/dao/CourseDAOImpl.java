package net.enLearn.dao;

import net.enLearn.entity.Course;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CourseDAOImpl implements CourseDAO{

    @Autowired
    private SessionFactory sessionFactory;

//    @Override
//    public List<Course> getCourseByTeacherID(int id) {
//        Session session = sessionFactory.getCurrentSession();
//        Teacher teacher = session.get(Teacher.class, id);
//        List<Course> courses = teacher.getCourseList();
//        return courses;
//    }

    @Override
    public void saveOrUpdate(Course course) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(course);
    }

    @Override
    public Course getCourseById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Course course = session.get(Course.class, id);
        return course;
    }

    @Override
    public void deleteCourse(int id) {
        Session session = sessionFactory.getCurrentSession();
        Course course = session.get(Course.class, id);
//        course.getTeacher().getCourseList().remove(course);
        session.delete(course);


    }
}
