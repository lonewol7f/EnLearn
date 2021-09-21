package net.enLearn.service;

import net.enLearn.dao.AdvertisementDAOImpl;
import net.enLearn.entity.Advertisement;
import net.enLearn.entity.Advertiser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AdvertisementServiceImpl implements AdvertisementService {

    @Autowired
    AdvertisementDAOImpl advertisementDAO;


    @Override
    @Transactional
    public void saveOrUpdate(Advertisement advertisement) {
        advertisementDAO.saveOrUpdate(advertisement);
    }

    @Override
    @Transactional
    public Advertisement getAdvertisementId(int id) {
        return advertisementDAO.getAdvertisementById(id);
    }


    @Override
    @Transactional
    public List<Advertisement> getAdvertisementsByAdvertiser(Advertiser advertiser){
        return advertisementDAO.getAdvertisementByAdvertiser(advertiser);
    }

    @Override
    @Transactional
    public void deleteAdvertisement(int ID){
        advertisementDAO.deleteAdvertisement(ID);
    }

}