package net.enLearn.dao;

import net.enLearn.entity.Advertisement;


public interface AdvertisementDAO {
    void saveOrUpdate(Advertisement advertisement);
    Advertisement getAdvertisementById(int id);
}