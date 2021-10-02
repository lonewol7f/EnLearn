package net.enLearn.service;

import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Advertiser;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface AdvertisementService {


    void saveOrUpdate(Advertisement advertisement);
    Advertisement getAdvertisementId(int id);

    List<Advertisement> getAdvertisementsByAdvertiser(Advertiser advertiser);

    @Transactional
    void deleteAdvertisement(int ID);

    List<Advertisement> getAllAdvertisements(int advertiser_id);


}