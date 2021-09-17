package net.enLearn.service;

import net.enLearn.dao.AdvertisementDAO;
import net.enLearn.entity.Advertisement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AdvertisementServiceImpl implements AdvertisementService {

    @Autowired
    private AdvertisementDAO advertisementDAO;

    @Override
    @Transactional
    public List<Advertisement> getAdvertisementListByAdvertiserId() {

        return advertisementDAO.getAdvertisementListByAdvertiserId();
    }

    @Override
    @Transactional
    public void saveOrUpdate(Advertisement advertisement) {
        advertisementDAO.saveOrUpdate(advertisement);
    }

    @Override
    @Transactional
    public Advertisement getAdvertisementById(int id) {
        return advertisementDAO.getAdvertisementById(id);
    }

    @Override
    @Transactional
    public void delete(Advertisement advertisement) {
        advertisementDAO.delete(advertisement);
    }
}
