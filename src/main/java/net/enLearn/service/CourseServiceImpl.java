package net.enLearn.service;

import net.enLearn.dao.CourseDAO;
import net.enLearn.entity.Course;
import net.enLearn.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService{

    @Autowired
    private CourseDAO courseDAO;

    @Override
    @Transactional
    public List<Course> getCourseListByTeacherId( int id) {
        return courseDAO.getCourseListByTeacherId(id);
    }

    @Override
    @Transactional
    public void saveOrUpdate(Course course) {
        courseDAO.saveOrUpdate(course);
    }

    @Override
    @Transactional
    public Course getCourseById(int id) {
        return courseDAO.getCourseById(id);
    }

    @Override
    @Transactional
    public void deleteCourse(int id) {
        courseDAO.deleteCourse(id);
    }

    @Override
    @Transactional
    public List<Course> getCourseList() {
        return courseDAO.getCourseList();
    }

    @Override
    @Transactional
    public void enroll(Student student, Course course) {
        courseDAO.enroll(student, course);
    }
}