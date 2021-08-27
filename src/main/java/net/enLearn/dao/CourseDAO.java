package net.enLearn.dao;

import net.enLearn.entity.Course;

import java.util.List;

public interface CourseDAO {

    List<Course> getCourseByTeacherID(int id);
    void createOrUpdate(Course course);
    Course getCourseById(int id);
    void deleteCourse(int id);

}
