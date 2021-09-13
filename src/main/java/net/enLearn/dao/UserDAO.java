package net.enLearn.dao;




import net.enLearn.entity.User;



public interface UserDAO {

    User getUserById(int id);
    boolean isValidUser(String email, String password);


    void saveOrUpdate(User user);

}

