package net.enLearn.service;

import net.enLearn.dao.CourseDAO;
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

    @Autowired
    private CourseDAO courseDAO;


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
    public int Checkuse(String email, String password) {
        return userDAO.Checkuse(email, password);
    }

    @Override
    @Transactional
    public int Checktype(int id) {
        return userDAO.Check_type(id);
    }

    @Override
    @Transactional
    public List<Course> getCourses(User user) {
        return userDAO.getCoursesByUserID(user.getId());
    }

    @Override
    @Transactional
    public List<User> getUserByEmail(String email) {
        return userDAO.getUserByEmail(email);
    }

    @Override
    public boolean newEmail(String email) {
        return userDAO.newEmail(email);
    }

    @Override
    public void addErrors(String error_message){
        errors.add(error_message);
    }

    @Override
    public boolean hasErrors(){
        return errors.size()>0;
    }

    @Override
    public void clearErrors(){
        errors.clear();
    }

    @Override
    public String getErrors(){
        StringBuilder r = new StringBuilder();
        for (String error : errors) {
            r.append(error);
        }
        return r.toString();
    }

    @Override
    @Transactional
    public List<Course> getCoursesByUserId_TEMP(int userId) {
        return courseDAO.getCourseByUserId(userId);
    }


}
