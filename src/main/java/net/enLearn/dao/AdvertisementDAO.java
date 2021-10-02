package net.enLearn.dao;

import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Advertiser;

import java.util.List;


public interface AdvertisementDAO {
    void saveOrUpdate(Advertisement advertisement);
    Advertisement getAdvertisementById(int id);

    List<Advertisement> getAdvertisementByAdvertiser(Advertiser advertiser);

    List<Advertisement> getAdvertisements();

    void deleteAdvertisement(int id);

    List<Advertisement> getAllAdvertisements(int advertiser_id);
}