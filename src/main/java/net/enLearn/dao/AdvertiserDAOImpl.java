package net.enLearn.dao;

import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Advertiser;
import net.enLearn.entity.User;
import net.enLearn.service.AdvertisementService;
import net.enLearn.service.AdvertisementServiceImpl;
import net.enLearn.service.UserService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdvertiserDAOImpl implements AdvertiserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private AdvertisementService advertisementService;

    @Autowired
    private UserService userService;


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

    @Override
    public void deleteAdvertiser(int id) {
        Session session = sessionFactory.getCurrentSession();


        Advertiser advertiser= session.get(Advertiser.class, id);
        User user = session.get(User.class, id);

        List<Advertisement> advertisements = advertisementService.getAdvertisementsByAdvertiser(advertiser);
        for (Advertisement advertisement : advertisements) {
            session.remove(advertisement);
        }

        session.remove(advertiser);
        session.remove(user);


    }

    @Override
    public boolean newEmail(String email) {

        List<User> users = userService.getUserByEmail(email);
        return users.size() == 0;
    }
}
