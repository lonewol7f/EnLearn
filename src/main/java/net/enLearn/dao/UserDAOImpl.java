package net.enLearn.dao;

import net.enLearn.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
}
