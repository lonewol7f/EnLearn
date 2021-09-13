package net.enLearn.dao;

import net.enLearn.entity.RedeemCode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Flashminat0 on 27/08/2021
 */

@Repository
public class RedeemCodeDAOImpl implements RedeemCodeDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<RedeemCode> getNonUsedCodes() {

        Session session = sessionFactory.getCurrentSession();

        Query<RedeemCode> redeemCodeQuery = session.createQuery("from RedeemCode where isRedeemed=false", RedeemCode.class);
        List<RedeemCode> codeList = redeemCodeQuery.getResultList();

        return codeList;
    }

    @Override
    public void saveCode(RedeemCode code) {

        Session session = sessionFactory.getCurrentSession();

        session.save(code);
    }

    @Override
    public void updateCode(RedeemCode code) {
        Session session = sessionFactory.getCurrentSession();

        session.update(code);
    }

    @Override
    public RedeemCode getCodeByCoupon(String coupon) {

        Session session = sessionFactory.getCurrentSession();

        Query<RedeemCode> codeQuery = session.createQuery("from RedeemCode where code=:code", RedeemCode.class);
        codeQuery.setParameter("code", coupon);

        RedeemCode code = codeQuery.getSingleResult();

        return code;
    }

    @Override
    public void deleteUsedCodes() {

        Session session = sessionFactory.getCurrentSession();

        Query deleteQuery = session.createQuery("delete from RedeemCode where isRedeemed=true");
        deleteQuery.executeUpdate();

    }

    @Override
    public List<RedeemCode> getUsedCodes() {
        Session session = sessionFactory.getCurrentSession();

        Query<RedeemCode> query = session.createQuery("from RedeemCode where isRedeemed=true", RedeemCode.class);
        List<RedeemCode> codes = query.getResultList();

        return codes;
    }

    @Override
    public List<RedeemCode> listCodes() {
        Session session = sessionFactory.getCurrentSession();

        Query<RedeemCode> query = session.createQuery("from RedeemCode", RedeemCode.class);
        List<RedeemCode> codes = query.getResultList();
        return codes;
    }

    @Override
    public void deleteCouponById(int codeId) {
        Session session = sessionFactory.getCurrentSession();

        RedeemCode code = session.get(RedeemCode.class, codeId);
        code.getAdmin().getRedeemCodes().remove(code);
        if (code.getUser() != null) {
            code.getUser().getRedeemCodes().remove(code);
        }

        session.delete(code);
    }

    @Override
    public void deleteCouponByCoupon(String coupon) {
        Session session = sessionFactory.getCurrentSession();

        Query<RedeemCode> query = session.createQuery("from RedeemCode where code=:code",RedeemCode.class);
        query.setParameter("code", coupon);

        RedeemCode code = query.getSingleResult();
        code.getAdmin().getRedeemCodes().remove(code);
        if (code.getUser() != null) {
            code.getUser().getRedeemCodes().remove(code);
        }

        session.delete(code);
    }
}
