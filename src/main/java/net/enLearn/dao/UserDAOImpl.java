package net.enLearn.dao;

import net.enLearn.entity.*;
import net.enLearn.service.AdvertisementService;
import net.enLearn.service.AdvertiserService;
import net.enLearn.service.StudentService;
import net.enLearn.service.TeacherService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

/**
 * Created by Kalana on 30/07/2021
 */

@Repository
public class UserDAOImpl implements UserDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private AdvertiserService advertiserService;

    private EntityManager entityManager;

    @Override
    public User getUserById(int id) {
        Session session = sessionFactory.getCurrentSession();

        User user = session.get(User.class, id);

        return user;
    }

    @Override
    public boolean isValidUser(String email, String password) {
//        Criteria criteria = sessionFactory
//                .getCurrentSession().createCriteria(User.class);
//        criteria.add(Expression.eq("email",email));
//        criteria.add(Expression.eq("password", password));
//
//        var criteriaBuilder = sessionFactory.getCurrentSession().getCriteriaBuilder();
//        TypedQuery<Object> cr = sessionFactory.getCurrentSession().getNamedQuery().createQuery();
////        Root<User> root = cr.from(User.class);
////        cr.select(root);
////        cr.select(root).where(
////                criteriaBuilder.and(
////                        criteriaBuilder.equal(root.get("email"), email),
////                        criteriaBuilder.equal(root.get("password"), password)
////                )
////        );
        CriteriaBuilder cb= sessionFactory.getCurrentSession().getCriteriaBuilder();
        CriteriaQuery<User[]> cquery=cb.createQuery(User[].class);
        Root<User[]> root=cquery.from(User[].class);
        cquery.select(root).where(
                cb.and(
                        cb.equal(root.get("email"), email),
                        cb.equal(root.get("password"), password)
                )
        );
        Query<User []> q=sessionFactory.getCurrentSession().createQuery(cquery);
        List<User[]> list=q.getResultList();

        return(list.size() > 0);
    }


    //==================================================================
    @Override
    public void saveOrUpdate(User student) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(student);
    }

    @Override
    public void delete(User user) {
        Session session = sessionFactory.getCurrentSession();

        try{
            Student student = session.get(Student.class, user.getId());
            session.remove(student);
        } catch (Exception e) {
            e.printStackTrace();
        }

        try{
            Teacher student = session.get(Teacher.class, user.getId());
            session.remove(student);
        } catch (Exception e) {
            e.printStackTrace();
        }
        User user2= session.get(User.class, user.getId());
        session.remove(user2);

    }

   /* @Override
    public User getStudentById(int id) {
        Session session = sessionFactory.getCurrentSession();
        User User = session.get(User.class, id);
        return User;
    }*/

    @Override
    public List<Course> getCoursesByUserID(int ID){
        Session session = sessionFactory.getCurrentSession();
        Query<Course> course = session.createQuery("from Course where teacher_id = "+ID,
                Course.class);
        List<Course> courses = course.getResultList();
        return courses;


    }

    @Override
    public int Checkuse(String email, String password){

        Session session = sessionFactory.getCurrentSession();
        User user1;
        try{
            Query<User> user = session.createQuery("from User where email = '"+email+"'",
                    User.class);
            List<User> users = user.getResultList();
            if(users.size()>=1){
                user1=users.get(0);
            }
            else{
                return -1;
            }

        } catch (Exception e) {
            e.printStackTrace();
            return -3;
        }

        if(user1.getPassword().equals(password)){
            return user1.getId();
        }
        else {
            return -2;
        }


    }

    @Override
    public int Chectype(int id){

        try{

            Teacher teacher = teacherService.getTeacherById(id);
            if(teacher != null){
                return 1;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        try{

            Student student = studentService.getStudentById(id);
            if(student != null){
                return 2;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        try{

            Advertiser advertiser = advertiserService.getAdvertiserById(id);
            if(advertiser != null){
                return 3;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return -1;




    }

}

