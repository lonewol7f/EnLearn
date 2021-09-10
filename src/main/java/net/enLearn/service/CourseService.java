package net.enLearn.service;

import net.enLearn.entity.Course;

import java.util.List;

public interface CourseService {

    List<Course> getCourseList();
    void saveOrUpdate(Course course);
    Course getCourseById(int id);
    void deleteCourse(int id);

}
