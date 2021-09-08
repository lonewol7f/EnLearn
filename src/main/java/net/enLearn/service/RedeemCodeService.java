package net.enLearn.service;

import net.enLearn.entity.RedeemCode;

import java.util.List;

/**
 * Created by Flashminat0 on 27/08/2021
 */

public interface RedeemCodeService {

    List<RedeemCode> getNonUsedCodes();
    void saveCode(RedeemCode code);
    void updateCode(RedeemCode code);
    RedeemCode getCodeByCoupon(String coupon);
    void deleteUsedCodes();
    List<RedeemCode> getUsedCodes();
    List<RedeemCode> listCodes();
    void deleteCouponById(int codeId);

}
