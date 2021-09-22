package net.enLearn.service;

import net.enLearn.entity.Advertisement;

public interface AdvertisementService {


    void saveOrUpdate(Advertisement advertisement);
    Advertisement getAdvertisementId(int id);

}