package net.enLearn.service;

import net.enLearn.entity.Notification;

import java.util.List;

/**
 * Created by Kalana on 04/09/2021
 */

public interface NotificationService {

    void addNotification(Notification notification);
    List<Notification> getNotificationByTeacherId(int teacherId);
}
