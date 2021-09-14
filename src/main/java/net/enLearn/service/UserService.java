package net.enLearn.service;

import net.enLearn.entity.User;

/**
 * Created by Kalana on 30/07/2021
 */

public interface UserService {

    User getUserById(int id);
    boolean isValidUser(String email, String password);

    public void saveOrUpdate(User user);

}
