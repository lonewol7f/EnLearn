package net.enLearn.dao;

import net.enLearn.entity.Student;

public interface StudentDAO {
    void saveOrUpdate(Student student);
    Student getStudentById(int id);
}


