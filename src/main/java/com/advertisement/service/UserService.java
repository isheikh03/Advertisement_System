package com.advertisement.service;

import com.advertisement.entity.User;
import java.util.List;

public interface UserService {

    List<User> getAll();

    User getById(Integer userId);

    boolean add(User user);

    void update(User user);

    void delete(Integer userId);

//    boolean isExists(String adminName, String adminEmail);

}
