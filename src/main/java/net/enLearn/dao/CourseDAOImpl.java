package net.enLearn.dao;

import net.enLearn.entity.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CourseDAOImpl implements CourseDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public List<Course> getCourseListByTeacherId(int id) {
        Session session = sessionFactory.getCurrentSession();
        Teacher teacher = session.get(Teacher.class, id);
        List<Course> courseList = teacher.getCourseList();
        return courseList;
    }


    @Override
    public void saveOrUpdate(Course course) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(course);
    }


    @Override
    public Course getCourseById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Course course = session.get(Course.class, id);
        return course;
    }


    @Override
    public void deleteCourse(int id) {
        Session session = sessionFactory.getCurrentSession();
        Course course = session.get(Course.class, id);
        course.getTeacher().getCourseList().remove(course);
        for (RecordedVideo video :course.getVideos()) {
            for (Comment comment : video.getComments()) {
                comment.getUser().getComments().clear();
                comment.getNotification().getTeacher().getNotifications().clear();
                comment.getNotification().setComment(null);
                comment.setNotification(null);
                for (Reply reply : comment.getReplies()) {
                    reply.getUser().getReplies().clear();
                    reply.setComment(null);
                }
                comment.getReplies().clear();
            }
        }
        course.getVideos().clear();
        session.delete(course);

    }

    @Override
    public List<Course> getCourseList(){
        Session session = sessionFactory.getCurrentSession();
        Query<Course> courseQuery = session.createQuery("from Course", Course.class);
        List<Course> courseList = courseQuery.getResultList();
        return courseList;
    }

    @Override
    public void enroll(Student student, Course course) {
        Session session = sessionFactory.getCurrentSession();

        Query query = session.createSQLQuery("INSERT INTO course_student (course_id, student_id) VALUE (:courseId, :studentId)");
        query.setParameter("courseId", course.getId());
        query.setParameter("studentId", student.getId());

        query.executeUpdate();
    }
}