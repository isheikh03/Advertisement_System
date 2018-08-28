package com.advertisement.dao;


import com.advertisement.entity.User;
import java.util.List;

public interface UserDao {

    List<User> getAll();

    User getById(Integer userId);

    void add(User user);

    void update(User user);

    void delete(Integer userId);

    boolean isExists(String userName, String userEmail, String userPassword);
}
