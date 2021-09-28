package net.enLearn.service;

import net.enLearn.entity.Teacher;
import net.enLearn.entity.User;

public interface TeacherService {
    void saveOrUpdate(Teacher teacher);


    Teacher getTeacherById(int id);

    void delete(int teacherID);
}
