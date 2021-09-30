package net.enLearn.service;

import net.enLearn.dao.ZoomClassDAO;
import net.enLearn.entity.ZoomClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ZoomClassServiceImpl implements ZoomClassService{

    @Autowired
    private ZoomClassDAO zoomClassDAO;

    @Override
    @Transactional
    public List<ZoomClass> getZoomClassListByCourseId(int id) {
        return zoomClassDAO.getZoomClassListByCourseId(id);
    }

    @Override
    @Transactional
    public void saveOrUpdate(ZoomClass zoomClass) {
        zoomClassDAO.saveOrUpdate(zoomClass);
    }

    @Override
    @Transactional
    public ZoomClass getZoomClassById(int id) {
        return zoomClassDAO.getZoomClassById(id);
    }

    @Override
    @Transactional
    public void deleteZoomClass(int id) {
        zoomClassDAO.deleteZoomClass(id);
    }

}
