package net.enLearn.dao;

import net.enLearn.entity.Course;

import java.util.List;

public interface CourseDAO {

//    List<Course> getCourseListByTeacherId(int id);
    List<Course> getCourseListByTeacherId();
    void saveOrUpdate(Course course);
    Course getCourseById(int id);

    List<Course> getCourseByUserId(int userID);

    void deleteCourse(int id);

}
