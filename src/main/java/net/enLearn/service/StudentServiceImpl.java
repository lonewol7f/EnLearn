package net.enLearn.service;

import net.enLearn.dao.StudentDAO;
import net.enLearn.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}
