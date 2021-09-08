package net.enLearn.service;

import net.enLearn.dao.RedeemCodeDAO;
import net.enLearn.entity.RedeemCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Flashminat0 on 27/08/2021
 */

@Service
public class RedeemCodeServiceImpl implements RedeemCodeService{

    @Autowired
    private RedeemCodeDAO redeemCodeDAO;

    @Override
    @Transactional
    public List<RedeemCode> getNonUsedCodes() {
        return redeemCodeDAO.getNonUsedCodes();
    }

    @Override
    @Transactional
    public void saveCode(RedeemCode code) {
        redeemCodeDAO.saveCode(code);
    }

    @Override
    @Transactional
    public void updateCode(RedeemCode code) {
        redeemCodeDAO.updateCode(code);
    }

    @Override
    @Transactional
    public RedeemCode getCodeByCoupon(String coupon) {
        return redeemCodeDAO.getCodeByCoupon(coupon);
    }

    @Override
    @Transactional
    public void deleteUsedCodes() {
        redeemCodeDAO.deleteUsedCodes();
    }

    @Override
    @Transactional
    public List<RedeemCode> getUsedCodes() {
        return redeemCodeDAO.getUsedCodes();
    }

    @Override
    @Transactional
    public List<RedeemCode> listCodes() {
        return redeemCodeDAO.listCodes();
    }

    @Override
    @Transactional
    public void deleteCouponById(int codeId) {
        redeemCodeDAO.deleteCouponById(codeId);
    }
}
