package net.enLearn.dao;

import net.enLearn.entity.User;
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

   /* @Override
    public User getStudentById(int id) {
        Session session = sessionFactory.getCurrentSession();
        User User = session.get(User.class, id);
        return User;
    }*/


}

