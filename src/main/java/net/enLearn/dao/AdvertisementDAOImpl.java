package net.enLearn.dao;

import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Advertiser;
import net.enLearn.entity.Course;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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

    @Override
    public List<Advertisement> getAdvertisementByAdvertiser(Advertiser advertiser){
        int id = advertiser.getId();
        Session session = sessionFactory.getCurrentSession();
        Query<Advertisement> advertisement = session.createQuery("from Advertisement where advertiser_id = "+id, Advertisement.class);

        List<Advertisement> advertisements = advertisement.getResultList();
        return advertisements;

    }

    @Override
    public List<Advertisement> getAdvertisements(){
        Session session = sessionFactory.getCurrentSession();
        Query<Advertisement> advertisement = session.createQuery("from Advertisement", Advertisement.class);
        List<Advertisement> advertisements = advertisement.getResultList();
        return advertisements;


    }


    @Override
    public void deleteAdvertisement(int id) {
        Session session = sessionFactory.getCurrentSession();
        Advertisement advertisement = session.get(Advertisement.class, id);

        session.delete(advertisement);

    }

    //To READ ALL Advertisemnets
    @Override
    public List<Advertisement> getAllAdvertisements(int advertiser_id){
        Session session = sessionFactory.getCurrentSession();
        //return session.createQuery("SELECT a FROM Advertisement where advertiser_id = "+advertiser_id, Advertisement.class).getResultList();
        return session.createQuery("from Advertisement where advertiser_id = "+advertiser_id, Advertisement.class).getResultList();

        //List<Advertisement> advertisements = advertisement.getResultList();
    }




}
