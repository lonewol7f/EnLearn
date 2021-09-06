package net.enLearn.service;

import net.enLearn.dao.CourseDAO;
import net.enLearn.entity.Course;
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
    public List<Course> getCourseByTeacherID(int id) {
        return courseDAO.getCourseByTeacherID(id);
    }

    @Override
    @Transactional
    public void saveOrUpdate(Course course) { courseDAO.saveOrUpdate(course); }

    @Override
    @Transactional
    public Course getCourseById(int id) {
        return courseDAO.getCourseById(id);
    }

    @Override
    @Transactional
    public void deleteCourse(int id) { courseDAO.deleteCourse(id); }
}
