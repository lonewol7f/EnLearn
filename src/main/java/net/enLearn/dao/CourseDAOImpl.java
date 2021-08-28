package net.enLearn.dao;

import net.enLearn.entity.Course;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CourseDAOImpl implements CourseDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Course> getCourseByTeacherID(int id) {
        return null;
    }

    @Override
    public void createOrUpdate(Course course) {

    }

    @Override
    public Course getCourseById(int id) {
        return null;
    }

    @Override
    public void deleteCourse(int id) {

    }
}
