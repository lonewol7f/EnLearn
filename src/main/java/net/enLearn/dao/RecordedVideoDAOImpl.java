package net.enLearn.dao;

import net.enLearn.entity.RecordedVideo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by Kalana on 30/07/2021
 */

@Repository
public class RecordedVideoDAOImpl implements RecordedVideoDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public RecordedVideo getVideoById(int id) {
        Session session = sessionFactory.getCurrentSession();

        RecordedVideo video = session.get(RecordedVideo.class, id);

        return video;
    }
}
