package net.enLearn.service;

import net.enLearn.entity.Course;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface CourseService {

//    List<Course> getCourseListByTeacherId(int id);
    List<Course> getCourseListByTeacherId();
    void saveOrUpdate(Course course);
    Course getCourseById(int id);

    @Transactional
    List<Course> getCoursesByUserID(int ID);

    void deleteCourse(int id);

}
