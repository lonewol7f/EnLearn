package net.enLearn.service;

import net.enLearn.entity.User;



public interface UserService {

    User getUserById(int id);
    boolean isValidUser(String email, String password);

    public void saveOrUpdate(User user);

}
