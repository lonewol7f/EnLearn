package net.enLearn.dao;

import net.enLearn.entity.Course;
import net.enLearn.entity.Student;

import java.util.List;

public interface CourseDAO {

    List<Course> getCourseListByTeacherId(int id);
    void saveOrUpdate(Course course);
    Course getCourseById(int id);
    void deleteCourse(int id);
    List<Course> getCourseList();
    void enroll(Student student, Course course);

}