package net.enLearn.dao;

import net.enLearn.entity.Event;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Kalana on 07/09/2021
 */

@Repository
public class EventDAOImpl implements EventDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Event> getEventList() {
        Session session = sessionFactory.getCurrentSession();

        Query<Event> query = session.createQuery("from Event", Event.class);
        List<Event> events = query.getResultList();

        return events;
    }

    @Override
    public void saveOrUpdateEvent(Event event) {
        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(event);
    }

    @Override
    public void deleteEvent(int eventId) {
        Session session = sessionFactory.getCurrentSession();

        Event event = session.get(Event.class, eventId);
        event.getAdmin().getEvents().remove(event);

        session.delete(event);
    }

    @Override
    public Event getEventById(int eventId) {
        Session session = sessionFactory.getCurrentSession();

        Event event = session.get(Event.class, eventId);
        return event;
    }
}
