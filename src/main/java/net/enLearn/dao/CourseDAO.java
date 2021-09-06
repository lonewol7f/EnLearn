package net.enLearn.dao;

import net.enLearn.entity.Course;

public interface CourseDAO {

//    List<Course> getCourseByTeacherID(int id);
    void saveOrUpdate(Course course);
    Course getCourseById(int id);
    void deleteCourse(int id);

}
