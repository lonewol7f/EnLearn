package net.enLearn.dao;

import net.enLearn.entity.Advertiser;

import java.util.List;

public interface AdvertiserDAO {
    void saveOrUpdate(Advertiser advertiser);

    Advertiser getAdvertiserById(int id);

    void deleteAdvertiser(int id);

    boolean newEmail(String email);

    List<Advertiser> getAllAdvertisers();
}