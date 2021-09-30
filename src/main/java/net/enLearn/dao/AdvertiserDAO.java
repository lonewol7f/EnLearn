package net.enLearn.dao;

import net.enLearn.entity.Advertiser;

public interface AdvertiserDAO {
    void saveOrUpdate(Advertiser advertiser);

    Advertiser getAdvertiserById(int id);

    void deleteAdvertiser(int id);
}