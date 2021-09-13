package net.enLearn.dao;

import net.enLearn.entity.Notification;
import net.enLearn.entity.Teacher;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Kalana on 04/09/2021
 */

@Repository
public class NotificationDAOImpl implements NotificationDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addNotification(Notification notification) {
        Session session = sessionFactory.getCurrentSession();

        session.save(notification);
    }

    @Override
    public List<Notification> getNotificationByTeacherId(int teacherId) {
        Session session = sessionFactory.getCurrentSession();

        Teacher teacher = session.get(Teacher.class, teacherId);

        Query<Notification> notificationQuery = session.createQuery("from Notification where teacher= :teacher order by id DESC", Notification.class);
        notificationQuery.setParameter("teacher", teacher);
        List<Notification> notifications = notificationQuery.getResultList();

        return notifications;
    }
}
