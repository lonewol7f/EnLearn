package net.enLearn.dao;




import net.enLearn.entity.Course;
import net.enLearn.entity.User;

import java.util.List;

/**
 * Created by Kalana on 30/07/2021
 */

public interface UserDAO {

    User getUserById(int id);
    boolean isValidUser(String email, String password);


    void saveOrUpdate(User user);

    List<Course> getCoursesByUserID(int ID);

    int Checkuse(String email, String password);

    int Check_type(int id);

    List<User> getUserByEmail(String email);

    boolean newEmail(String email);
}

