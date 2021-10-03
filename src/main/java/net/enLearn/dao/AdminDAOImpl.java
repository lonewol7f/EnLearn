package net.enLearn.dao;

import net.enLearn.entity.Admin;
import net.enLearn.entity.AdvertisementApprove;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by Kalana on 07/09/2021
 */

@Repository
public class AdminDAOImpl implements AdminDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Admin getAdminById(int adminId) {
        Session session = sessionFactory.getCurrentSession();

        Admin admin = session.get(Admin.class, adminId);

        return admin;
    }

    //Advertisement confirm
    @Override
    public void saveType(AdvertisementApprove advertisementApprove){
        Session session = sessionFactory.getCurrentSession();
        session.save(advertisementApprove);
    }
}
