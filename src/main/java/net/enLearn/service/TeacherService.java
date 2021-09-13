package net.enLearn.service;

import net.enLearn.entity.Teacher;

public interface TeacherService {
    void saveOrUpdate(Teacher teacher);


    Teacher getTeacherById(int id);
}
