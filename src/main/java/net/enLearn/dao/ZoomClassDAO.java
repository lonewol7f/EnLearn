package net.enLearn.dao;

import net.enLearn.entity.ZoomClass;

import java.util.List;

public interface ZoomClassDAO {

    List<ZoomClass> getZoomClassListByCourseId(int id);
    void saveOrUpdate(ZoomClass zoomClass);
    ZoomClass getZoomClassById(int id);
    void deleteZoomClass(int id);
}
