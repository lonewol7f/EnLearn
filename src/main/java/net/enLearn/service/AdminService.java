package net.enLearn.service;

import net.enLearn.entity.Admin;
import net.enLearn.entity.AdvertisementApprove;

/**
 * Created by Kalana on 07/09/2021
 */

public interface AdminService {

    Admin getAdminById(int adminId);

    void saveType(AdvertisementApprove advertisementApprove);

}
