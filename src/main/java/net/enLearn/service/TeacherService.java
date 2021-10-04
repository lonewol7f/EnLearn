package net.enLearn.service;

import net.enLearn.entity.Teacher;

import java.util.List;

public interface TeacherService {

    Teacher getTeacherById(int id);
    List getCommentCountForCourses(int teacherId);
    void updateTeacher(Teacher teacher);
}