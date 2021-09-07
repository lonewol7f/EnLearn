package net.enLearn.service;

import net.enLearn.entity.Event;

import java.util.List;

/**
 * Created by Kalana on 07/09/2021
 */

public interface EventService {

    List<Event> getEventList();
    void saveOrUpdateEvent(Event event);
    void deleteEvent(int eventId);
    Event getEventById(int eventId);

}
