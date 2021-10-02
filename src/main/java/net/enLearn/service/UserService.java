package net.enLearn.service;

import net.enLearn.entity.Course;
import net.enLearn.entity.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Kalana on 30/07/2021
 */

public interface UserService {

    ArrayList<String> errors = new ArrayList<>();

    int getCurrentsesion();

    void setCurrentsesion(int currentsesion);

    User getUserById(int id);
    boolean isValidUser(String email, String password);

    void saveOrUpdate(User user);


    @Transactional
    int Checkuse(String email, String password);

    @Transactional
    int Checktype(int id);

    @Transactional
    List<Course> getCourses(User user);

    List<User> getUserByEmail(String email);

    boolean newEmail(String email);

    void addErrors(String error_message);

    boolean hasErrors();
    void clearErrors();
    String getErrors();

    @Transactional
    List<Course> getCoursesByUserId_TEMP(int userId);
}
