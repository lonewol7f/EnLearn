package net.enLearn.service;

import net.enLearn.dao.StudentDAO;
import net.enLearn.entity.Course;
import net.enLearn.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Kalana on 10/09/2021
 */

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDAO studentDAO;

    @Override
    @Transactional
    public void registerUser(Student student) {
        studentDAO.registerUser(student);
    }

    @Override
    @Transactional
    public List<Course> getEnrolledCoursesByStudentId(int id) {
        return studentDAO.getEnrolledCoursesByStudentId(id);
    }

    @Override
    @Transactional
    public Student getStudentById(int id) {
        return studentDAO.getStudentById(id);
    }

    @Override
    @Transactional
    public void updateStudent(Student student) {
        studentDAO.updateStudent(student);
    }
}
