package net.enLearn.dao;

import net.enLearn.entity.Course;
import net.enLearn.entity.RecordedVideo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class RecordedVideoDAOImpl implements RecordedVideoDAO{

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public List<RecordedVideo> getVideoListByCourseId(int id) {
        Session session = sessionFactory.getCurrentSession();
        Course course = session.get(Course.class, id);
        List<RecordedVideo> videoList = course.getVideos();
        return videoList;
    }


    @Override
    public void saveOrUpdate(RecordedVideo recordedVideo) {
        Session session = sessionFactory.getCurrentSession();
        Course course = recordedVideo.getCourse();
        recordedVideo.setCourse(course);
        session.saveOrUpdate(recordedVideo);
    }


    @Override
    public RecordedVideo getVideoById(int id) {
        Session session = sessionFactory.getCurrentSession();
        RecordedVideo video = session.get(RecordedVideo.class, id);
        return video;
    }


    @Override
    public void deleteVideo(int id) {
        Session session = sessionFactory.getCurrentSession();
        RecordedVideo recordedVideo = session.get(RecordedVideo.class, id);
        recordedVideo.getCourse().getZoomClassList().remove(recordedVideo);
        session.delete(recordedVideo);
    }
}
