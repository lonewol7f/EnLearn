package net.enLearn.service;

import net.enLearn.dao.AdvertiserDAO;
import net.enLearn.entity.Advertiser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdvertiserServiceImpl implements AdvertiserService {

    @Autowired
    private AdvertiserDAO advertiserDAO;


    @Override
    @Transactional
    public void saveOrUpdate(Advertiser advertiser) {
        advertiserDAO.saveOrUpdate(advertiser);
    }

    @Override
    @Transactional
    public Advertiser getAdvertiserById(int id) {
        return advertiserDAO.getAdvertiserById(id);
    }

    @Override
    @Transactional
    public void deleteAdvertiser(int id) {
        advertiserDAO.deleteAdvertiser(id);
    }

    @Override
    @Transactional
    public boolean newEmail(String email) {
        return advertiserDAO.newEmail(email);
    }


}