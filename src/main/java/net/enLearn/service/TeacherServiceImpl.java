package net.enLearn.service;

import net.enLearn.dao.TeacherDAO;
import net.enLearn.entity.Teacher;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService{

    @Autowired
    private TeacherDAO teacherDAO;

    @Override
    @Transactional
    public Teacher getTeacherById(int id) {
        return teacherDAO.getTeacherById(id);
    }

    @Override
    @Transactional
    public List getCommentCountForCourses(int teacherId) {
        return teacherDAO.getCommentCountForCourses(teacherId);
    }

    @Override
    @Transactional
    public void updateTeacher(Teacher teacher) {
        teacherDAO.updateTeacher(teacher);
    }
}