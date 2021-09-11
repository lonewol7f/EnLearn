package net.enLearn.service;

import net.enLearn.entity.User;

/**
 * Created by Kalana on 30/07/2021
 */

public interface UserService {

    User getUserById(int id);
    int getLoggedUserId();
    boolean checkExistingUser(String email);

}
