package net.enLearn.service;

import net.enLearn.dao.RecordedVideoDAO;
import net.enLearn.entity.RecordedVideo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Kalana on 30/07/2021
 */

@Service
public class RecordedVideoServiceImpl implements RecordedVideoService{

    @Autowired
    private RecordedVideoDAO recordedVideoDAO;

    @Override
    @Transactional
    public RecordedVideo getVideoById(int id) {
        return recordedVideoDAO.getVideoById(id);
    }
}
