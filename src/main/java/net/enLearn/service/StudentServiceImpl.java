package net.enLearn.service;

import net.enLearn.dao.StudentDAO;
import net.enLearn.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StudentServiceImpl implements StudentService{



        @Autowired
        private StudentDAO studentDAO;


        @Override
        @Transactional
        public void saveOrUpdate(Student student) {
            studentDAO.saveOrUpdate(student);
        }

        @Override
        @Transactional
        public Student getStudentById(int id) {
            return studentDAO.getStudentById(id);
        }

        @Override
        @Transactional
        public void delete(int id) {
                studentDAO.delete(id);
        }
}
