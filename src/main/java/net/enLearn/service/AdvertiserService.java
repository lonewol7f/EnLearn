package net.enLearn.service;

import net.enLearn.entity.Advertiser;


public interface AdvertiserService {
    void saveOrUpdate(Advertiser advertiser);
    Advertiser getAdvertiserById(int id);

    void deleteAdvertiser(int id);
}