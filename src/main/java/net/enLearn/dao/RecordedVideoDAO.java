package net.enLearn.dao;

import net.enLearn.entity.RecordedVideo;

import java.util.List;


public interface RecordedVideoDAO {

    List<RecordedVideo> getVideoListByCourseId(int id);
    void saveOrUpdate(RecordedVideo recordedVideo);
    RecordedVideo getVideoById(int id);
    void deleteVideo(int id);



}
