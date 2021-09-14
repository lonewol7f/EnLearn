package net.enLearn.dao;

import net.enLearn.entity.Student;


public interface StudentDAO {

    Student getStudentById(int id);
    void saveOrUpdate(Student student);


}
