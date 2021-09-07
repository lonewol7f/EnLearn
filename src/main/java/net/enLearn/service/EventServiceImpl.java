package net.enLearn.service;

import net.enLearn.dao.EventDAO;
import net.enLearn.entity.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Kalana on 07/09/2021
 */

@Service
public class EventServiceImpl implements EventService{

    @Autowired
    private EventDAO eventDAO;

    @Override
    @Transactional
    public List<Event> getEventList() {
        return eventDAO.getEventList();
    }

    @Override
    @Transactional
    public void saveOrUpdateEvent(Event event) {
        eventDAO.saveOrUpdateEvent(event);
    }

    @Override
    @Transactional
    public void deleteEvent(int eventId) {
        eventDAO.deleteEvent(eventId);
    }

    @Override
    @Transactional
    public Event getEventById(int eventId) {
        return eventDAO.getEventById(eventId);
    }
}
