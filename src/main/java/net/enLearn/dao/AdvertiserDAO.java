package net.enLearn.dao;

import net.enLearn.entity.Advertiser;
import org.springframework.stereotype.Service;

@Service
public interface AdvertiserDAO {

    Advertiser getAdvertiserById(int id);
    void saveOrUpdate(Advertiser advertiser);


}
