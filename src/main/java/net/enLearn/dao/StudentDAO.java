package net.enLearn.dao;

import net.enLearn.entity.Course;
import net.enLearn.entity.Student;

import java.util.List;

/**
 * Created by Kalana on 10/09/2021
 */

public interface StudentDAO {

    void registerUser(Student student);
    List<Course> getEnrolledCoursesByStudentId(int id);
    Student getStudentById(int id);

}
