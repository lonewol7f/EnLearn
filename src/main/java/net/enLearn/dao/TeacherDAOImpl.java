package net.enLearn.dao;

import net.enLearn.entity.Teacher;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TeacherDAOImpl implements TeacherDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Teacher getTeacherById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Teacher teacher = session.get(Teacher.class, id);
        return teacher;
    }

    @Override
    public List getCommentCountForCourses(int teacherId) {
        Session session = sessionFactory.getCurrentSession();

        Query query = session.createSQLQuery("SELECT COUNT(comment.id) AS c, course.title " +
                "FROM course, comment, recorded_video " +
                "WHERE course.teacher_id=:teacherId " +
                "AND recorded_video.course_id = course.id " +
                "AND comment.video_id = recorded_video.id " +
                "GROUP BY course.title " +
                "ORDER BY c DESC");

        List list = query.getResultList();
        return list;
    }
}