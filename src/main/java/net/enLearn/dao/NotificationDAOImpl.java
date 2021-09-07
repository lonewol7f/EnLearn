package net.enLearn.dao;

import net.enLearn.entity.Notification;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by Kalana on 04/09/2021
 */

@Repository
public class NotificationDAOImpl implements NotificationDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addNotification(Notification notification) {
        Session session = sessionFactory.getCurrentSession();

        session.save(notification);
    }
}
