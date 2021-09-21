package net.enLearn.service;

import net.enLearn.dao.UserDAO;
import net.enLearn.entity.Course;
import net.enLearn.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Kalana on 30/07/2021
 */

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    public  int currentsesion=-1;

    @Override
    public int getCurrentsesion() {
        return currentsesion;
    }

    @Override
    public void setCurrentsesion(int currentsesion) {
        this.currentsesion = currentsesion;
    }

    @Override
    @Transactional
    public User getUserById(int id) {
        return userDAO.getUserById(id);
    }

    @Override
    @Transactional
    public boolean isValidUser(String email, String password) {
        return userDAO.isValidUser(email, password);
    }

    @Override
    @Transactional
    public void saveOrUpdate(User user) {
        userDAO.saveOrUpdate(user);
    }

    @Override
    @Transactional
    public void delete(User user) {
        userDAO.delete(user);
    }

    @Override
    @Transactional
    public int Checkuse(String email, String password) {
        return userDAO.Checkuse(email, password);
    }

    @Override
    @Transactional
    public int Chectype(int id) {
        return userDAO.Chectype(id);
    }

    @Override
    @Transactional
    public List<Course> getCourses(User user) {
        return userDAO.getCoursesByUserID(user.getId());
    }



}
