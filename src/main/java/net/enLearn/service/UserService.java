package net.enLearn.service;

import net.enLearn.entity.Course;
import net.enLearn.entity.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Kalana on 30/07/2021
 */

public interface UserService {

    int getCurrentsesion();

    void setCurrentsesion(int currentsesion);

    User getUserById(int id);
    boolean isValidUser(String email, String password);

    public void saveOrUpdate(User user);
    public void delete(User user);
    @Transactional
    int Checkuse(String email, String password);
    int Chectype(int id);


    @Transactional
    List<Course> getCourses(User user);



    List<User> getUserByEmail(String email);
}
