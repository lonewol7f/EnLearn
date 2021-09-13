package net.enLearn.service;

import net.enLearn.dao.TeacherDAO;
import net.enLearn.entity.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class TeacherServiceImpl implements TeacherService{

    @Autowired
    private TeacherDAO teacherDAO;

    @Override
    @Transactional
    public void saveOrUpdate(Teacher teacher) {
        teacherDAO.saveOrUpdate(teacher);
    }

    @Override
    @Transactional
    public Teacher getTeacherById(int id) {
        return teacherDAO.getTeacherById(id);
    }


}
