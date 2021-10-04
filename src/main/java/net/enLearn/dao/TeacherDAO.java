package net.enLearn.dao;

import net.enLearn.entity.Teacher;

import java.util.List;

/**
 * Created by Kalana on 11/09/2021
 */

public interface TeacherDAO {

    Teacher getTeacherById(int id);
    List getCommentCountForCourses(int teacherId);
    void updateTeacher(Teacher teacher);

}
