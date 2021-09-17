package net.enLearn.service;

import net.enLearn.entity.Advertisement;

import java.util.List;

public interface AdvertisementService {

    List<Advertisement> getAdvertisementListByAdvertiserId();
    void saveOrUpdate(Advertisement advertisement);
    Advertisement getAdvertisementById(int id);

    void delete(Advertisement advertisement);
}
