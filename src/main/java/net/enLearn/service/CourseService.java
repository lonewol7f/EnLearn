package net.enLearn.service;

import net.enLearn.entity.Course;

public interface CourseService {

//    List<Course> getCourseByTeacherID(int id);
    void saveOrUpdate(Course course);
    Course getCourseById(int id);
    void deleteCourse(int id);

}
