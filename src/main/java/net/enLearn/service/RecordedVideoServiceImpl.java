package net.enLearn.service;

import net.enLearn.dao.RecordedVideoDAO;
import net.enLearn.entity.RecordedVideo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
public class RecordedVideoServiceImpl implements RecordedVideoService{

    @Autowired
    private RecordedVideoDAO recordedVideoDAO;

    @Override
    @Transactional
    public List<RecordedVideo> getVideoListByCourseId(int id) {
        return recordedVideoDAO.getVideoListByCourseId(id);
    }

    @Override
    @Transactional
    public void saveOrUpdate(RecordedVideo recordedVideo) {
        recordedVideoDAO.saveOrUpdate(recordedVideo);
    }

    @Override
    @Transactional
    public RecordedVideo getVideoById(int id) {
        return recordedVideoDAO.getVideoById(id);
    }

    @Override
    @Transactional
    public void deleteVideo(int id) {
        recordedVideoDAO.deleteVideo(id);
    }

}
