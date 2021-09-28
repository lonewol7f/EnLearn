package net.enLearn.dao;

import net.enLearn.entity.Course;
import net.enLearn.entity.Teacher;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CourseDAOImpl implements CourseDAO{

    @Autowired
    private SessionFactory sessionFactory;

//    @Override
//    public List<Course> getCourseListByTeacherId(int id) {
//        Session session = sessionFactory.getCurrentSession();
//        Teacher teacher = session.get(Teacher.class, id);
//        List<Course> courses = teacher.getCourseList();
//        return courses;
//    }

    @Override
    public List<Course> getCourseListByTeacherId() {
        Session session = sessionFactory.getCurrentSession();
        Query<Course> courseQuery = session.createQuery("from Course", Course.class);
        List<Course> courses = courseQuery.getResultList();
        return courses;
    }

    @Override
    public void saveOrUpdate(Course course) {
        Session session = sessionFactory.getCurrentSession();
//        Teacher teacher = course.getTeacher();
//        course.setTeacher(teacher);
        session.saveOrUpdate(course);
    }

    @Override
    public Course getCourseById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Course course = session.get(Course.class, id);
        return course;
    }

    @Override
    public List<Course> getCourseByUserId(int userID){
        Session session = sessionFactory.getCurrentSession();
        //TODO This method should be created by "Course" creator
//        Query<Course> courseQuery = session.createQuery("from Course where user_id = "+userID, Course.class);
//        List<Course> courses = courseQuery.getResultList();

        //Below will create random courses
        List<Course> courses = new ArrayList<>();

        //Random amount of courses
        int num = (int) ((Math.random())*3)*4;

        for (int i=0; i<num; i++){
            courses.add(getRandomCourse());
        }


        return courses;

    }

    //Temporary method
    public static Course getRandomCourse(){

        int i = (int) (Math.random()*100);

        Teacher teacher = new Teacher();
        teacher.setFirstName("Teacher "+(i+1));

        return new Course(i,
                "Title "+(i+1),
                "Type "+(i+1),
                "Des "+(i+1),
                100*(i+1),
                null,
                teacher
        );

    }

    @Override
    public void deleteCourse(int id) {
        Session session = sessionFactory.getCurrentSession();
        Course course = session.get(Course.class, id);
//        course.getTeacher().getCourseList().remove(course);
        session.delete(course);

    }
}
