package net.enLearn.dao;

import net.enLearn.entity.Advertisement;

import java.util.List;

public interface AdvertisementDAO {
    List<Advertisement> getAdvertisementListByAdvertiserId();
    void saveOrUpdate(Advertisement advertisement);

    void delete(Advertisement advertisement);

    Advertisement getAdvertisementById(int id);

}
