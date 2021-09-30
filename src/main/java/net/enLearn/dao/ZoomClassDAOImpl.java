package net.enLearn.dao;

import net.enLearn.entity.Course;
import net.enLearn.entity.ZoomClass;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ZoomClassDAOImpl implements ZoomClassDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public List<ZoomClass> getZoomClassListByCourseId(int id) {
        Session session = sessionFactory.getCurrentSession();
        Course course = session.get(Course.class, id);
        List<ZoomClass> zoomClassList = course.getZoomClassList();
        return zoomClassList;
    }


    @Override
    public void saveOrUpdate(ZoomClass zoomClass) {
        Session session = sessionFactory.getCurrentSession();
        Course course = zoomClass.getCourse();
        zoomClass.setCourse(course);
        session.saveOrUpdate(zoomClass);
    }


    @Override
    public ZoomClass getZoomClassById(int id) {
        Session session = sessionFactory.getCurrentSession();
        ZoomClass zoomClass = session.get(ZoomClass.class, id);
        return zoomClass;
    }


    @Override
    public void deleteZoomClass(int id) {
        Session session = sessionFactory.getCurrentSession();
        ZoomClass zoomClass = session.get(ZoomClass.class, id);
        zoomClass.getCourse().getZoomClassList().remove(zoomClass);
        session.delete(zoomClass);
    }

}
