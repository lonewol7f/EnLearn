package net.enLearn.dao;

import net.enLearn.entity.Teacher;

public interface TeacherDAO {

        void saveOrUpdate(Teacher teacher);

        Teacher getTeacherById(int id);

    void delete(int teacherID);
}
