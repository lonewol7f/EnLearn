package net.enLearn.service;

import net.enLearn.entity.Student;

public interface StudentService {
    public void saveOrUpdate(Student student);
    public Student getStudentById(int id);

}



