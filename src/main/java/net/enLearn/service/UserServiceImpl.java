package net.enLearn.service;

import net.enLearn.dao.UserDAO;
import net.enLearn.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Kalana on 30/07/2021
 */

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

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



}
