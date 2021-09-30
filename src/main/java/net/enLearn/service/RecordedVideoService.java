package net.enLearn.service;

import net.enLearn.entity.RecordedVideo;

import java.util.List;


public interface RecordedVideoService {

    List<RecordedVideo> getVideoListByCourseId(int id);
    void saveOrUpdate(RecordedVideo recordedVideo);
    RecordedVideo getVideoById(int id);
    void deleteVideo(int id);

}
