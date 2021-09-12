package net.enLearn.dao;

import net.enLearn.entity.Course;

import java.util.List;

public interface CourseDAO {

    List<Course> getCourseListByTeacherId(int id);
    void saveOrUpdate(Course course);
    Course getCourseById(int id);
    void deleteCourse(int id);

}