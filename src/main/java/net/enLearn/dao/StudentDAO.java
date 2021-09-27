package net.enLearn.dao;

import net.enLearn.entity.Student;

/**
 * Created by Osini Kithma
 * 9/13/21
 */

public interface StudentDAO {

    Student getStudentById(int id);
    void saveOrUpdate(Student student);


    void delete(int id);
}
