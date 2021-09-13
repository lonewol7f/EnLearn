package net.enLearn.dao;

import net.enLearn.entity.Discount;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    //--------------------------------------------------------------------------------------------------------
    //Get Discount
    //READ
    @Override
    public Discount getDiscount(Integer discountID){
        Session session = sessionFactory.getCurrentSession();

        Discount discount = session.get(Discount.class,discountID);
        return discount;
    }

    //------------------------------------------------------------------------------------------------------
    //Gea All Discount
    //READ ALL
    @Override
    public List<Discount> getAllDiscountByAdminId(){
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("SELECT a FROM Discount a",Discount.class).getResultList();
    }


}
