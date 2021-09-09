package net.enLearn.dao;

import net.enLearn.entity.User;

/**
 * Created by Kalana on 30/07/2021
 */

public interface UserDAO {

    User getUserById(int id);
    int getLoggedUserId();

}
