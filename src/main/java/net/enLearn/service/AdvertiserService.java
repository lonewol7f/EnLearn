package net.enLearn.service;

import net.enLearn.entity.Advertiser;

import java.util.List;


public interface AdvertiserService {
    void saveOrUpdate(Advertiser advertiser);
    Advertiser getAdvertiserById(int id);

    void deleteAdvertiser(int id);

    boolean newEmail(String email);

    List<Advertiser> getAllAdvertisers();
}