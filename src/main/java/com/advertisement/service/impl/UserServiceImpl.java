package com.advertisement.service.impl;

import com.advertisement.dao.UserDao;
import com.advertisement.entity.User;
import com.advertisement.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }

    @Override
    public User getById(Integer userId) {
        User user = userDao.getById(userId);
        return user;
    }

    @Override
    public synchronized boolean add(User user) {
        if (userDao.isExists(user.getUserName(), user.getUserEmail(), user.getUserPassword())) {
            return false; 
        } else {
            userDao.add(user);
            return true;
        }
    }
 
    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public void delete(Integer userId) {
        userDao.delete(userId);
    }

    

}
