package net.enLearn.service;

import net.enLearn.entity.Advertiser;

public interface AdvertiserService {

    Advertiser getAdvertiserById(int id);
    Advertiser getCurrentAdvertiserById();
    int getCurrentAdvertiserId();

    void saveOrUpdate(Advertiser advertiser);


}
