package net.enLearn.dao;

import net.enLearn.entity.Admin;
import net.enLearn.entity.AdvertisementApprove;

/**
 * Created by Kalana on 07/09/2021
 */

public interface AdminDAO {

    Admin getAdminById(int adminId);

    void saveType(AdvertisementApprove advertisementApprove);

}
