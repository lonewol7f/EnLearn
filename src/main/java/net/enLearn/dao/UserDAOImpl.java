package net.enLearn.dao;

import net.enLearn.entity.RedeemCode;
import net.enLearn.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Kalana on 30/07/2021
 */

@Repository
public class UserDAOImpl implements UserDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public User getUserById(int id) {
        Session session = sessionFactory.getCurrentSession();

        User user = session.get(User.class, id);

        return user;
    }

    @Override
    public int getLoggedUserId() {

        Session session = sessionFactory.getCurrentSession();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!(authentication instanceof AnonymousAuthenticationToken)){
            String userName = authentication.getName();

            Query<User> query = session.createQuery("from User where email=:email", User.class);
            query.setParameter("email", userName);

            User user = query.getSingleResult();
            int userId = user.getId();

            return userId;
        }

        return 0;
    }

    @Override
    public boolean checkExistingUser(String email) {

        Session session = sessionFactory.getCurrentSession();

        Query query = session.createQuery("select count(*) from User where email= :email");
        query.setParameter("email", email);

        long no = (long) query.uniqueResult();
        return no > 0;
    }

    @Override
    public void redeemCode(RedeemCode code) {
        Session session = sessionFactory.getCurrentSession();

        User user = getUserById(getLoggedUserId());
        user.setCoins(user.getCoins() + code.getCoins());
        session.update(user);

        code.setRedeemed(true);
        code.setUser(user);
        session.update(code);

        Date date = Calendar.getInstance().getTime();
        DateFormat df  = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String strDate  = df.format(date);


        Query orderQuery =session.createSQLQuery("insert into `order` (payment, bought_on, coupon_id) " +
                "VALUES (:payment, :bought, :couponId)");
        orderQuery.setParameter("payment", code.getCoins());
        orderQuery.setParameter("bought", strDate);
        orderQuery.setParameter("couponId", code.getId());
        orderQuery.executeUpdate();

    }
}

