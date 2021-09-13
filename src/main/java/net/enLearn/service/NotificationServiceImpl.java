package net.enLearn.service;

import net.enLearn.dao.NotificationDAO;
import net.enLearn.entity.Notification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Kalana on 04/09/2021
 */

@Service
public class NotificationServiceImpl implements NotificationService{

    @Autowired
    private NotificationDAO notificationDAO;

    @Override
    @Transactional
    public void addNotification(Notification notification) {
        notificationDAO.addNotification(notification);
    }

    @Override
    @Transactional
    public List<Notification> getNotificationByTeacherId(int teacherId) {
        return notificationDAO.getNotificationByTeacherId(teacherId);
    }
}
