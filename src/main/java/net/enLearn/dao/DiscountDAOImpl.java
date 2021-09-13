package net.enLearn.dao;

import net.enLearn.entity.Discount;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DiscountDAOImpl implements DiscountDAO{

    @Autowired
    private SessionFactory sessionFactory;


    //---------------------------------------------------------------------------------------------------------
    //Save Discount
    //CREATE
    @Override
    public void SaveDiscount(Discount discount){
        Session session = sessionFactory.getCurrentSession();
        session.save(discount);
    }


}
