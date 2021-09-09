package net.enLearn.dao;

import net.enLearn.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;

/**
 * Created by Kalana on 30/07/2021
 */

@Repository
public class UserDAOImpl implements UserDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User getUserById(int id) {
        Session session = sessionFactory.getCurrentSession();

        User user = session.get(User.class, id);

        return user;
    }

    @Override
    public int getLoggedUserId() {

        Session session = sessionFactory.getCurrentSession();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            String userName = authentication.getName();

            Query<User> query = session.createQuery("from User where email=:email", User.class);
            query.setParameter("email", userName);

            User user = query.getSingleResult();
            int userId = user.getId();

            return userId;
        }

        return 0;
    }
}

