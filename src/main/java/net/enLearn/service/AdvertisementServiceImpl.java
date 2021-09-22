package net.enLearn.service;

import net.enLearn.dao.AdvertisementDAOImpl;
import net.enLearn.entity.Advertisement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    public Advertisement getAdvertisementId(int id) {
        return advertisementDAO.getAdvertisementById(id);
    }



}