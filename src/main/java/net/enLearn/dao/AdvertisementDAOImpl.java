package net.enLearn.dao;

import net.enLearn.entity.Advertisement;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdvertisementDAOImpl implements AdvertisementDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void saveOrUpdate(Advertisement advertisement) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(advertisement);
    }

    @Override
    public Advertisement getAdvertisementById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Advertisement advertisement = session.get(Advertisement.class, id);
        return advertisement;
    }


}
