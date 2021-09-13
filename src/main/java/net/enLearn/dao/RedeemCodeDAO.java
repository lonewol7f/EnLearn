package net.enLearn.dao;

import net.enLearn.entity.RedeemCode;

import java.util.List;

/**
 * Created by Flashminat0 on 27/08/2021
 */

public interface RedeemCodeDAO {

    List<RedeemCode> getNonUsedCodes();
    void saveCode(RedeemCode code);
    void updateCode(RedeemCode code);
    RedeemCode getCodeByCoupon(String coupon);
    void deleteUsedCodes();
    List<RedeemCode> getUsedCodes();
    List<RedeemCode> listCodes();
    void deleteCouponById(int codeId);
    void deleteCouponByCoupon(String coupon);

}
