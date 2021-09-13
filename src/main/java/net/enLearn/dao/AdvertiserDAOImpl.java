package net.enLearn.dao;

import net.enLearn.entity.Advertiser;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdvertiserDAOImpl implements AdvertiserDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void saveOrUpdate(Advertiser advertiser) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(advertiser);
    }

    @Override
    public Advertiser getAdvertiserById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Advertiser advertiser = session.get(Advertiser.class, id);
        return advertiser;
    }
}
